local dap = require("dap")
local mason_path = vim.fn.stdpath("data") .. "/mason"
local is_macos = vim.loop.os_uname().sysname == "Darwin"

local function is_executable_file(path)
	return vim.fn.filereadable(path) == 1 and vim.fn.executable(path) == 1
end

local function find_executable()
	local cwd = vim.fn.getcwd()
	local build_dir = cwd .. "/build"
	local compile_commands_path = build_dir .. "/compile_commands.json"

	-- Try to use compile_commands.json to find executable output
	if vim.fn.filereadable(compile_commands_path) == 1 then
		local content = table.concat(vim.fn.readfile(compile_commands_path), "\n")
		local ok, decoded = pcall(vim.json.decode, content)

		if ok and type(decoded) == "table" and #decoded > 0 then
			-- Look for output paths or source files to infer target
			for _, entry in ipairs(decoded) do
				local file = entry.file
				if file and file:match("%.c.+$") then
					local stem = vim.fn.fnamemodify(file, ":t:r") -- e.g. main.cpp → main
					local candidate = build_dir .. "/" .. stem
					if is_executable_file(candidate) then
						return candidate
					end
				end
			end
		end
	end

	-- Fallback: scan build directory for any executable file
	if vim.fn.isdirectory(build_dir) == 0 then
		vim.notify("No build/ directory found", vim.log.levels.ERROR)
		return ""
	end
end
-- -- Utility: Auto-find first executable in build/
-- local function find_executable()
-- 	local cwd = vim.fn.getcwd()
-- 	local build_path = cwd .. "/build"
-- 	if vim.fn.isdirectory(build_path) == 0 then
-- 		vim.notify("No build/ directory found", vim.log.levels.ERROR)
-- 		return ""
-- 	end
--
-- 	local handle = io.popen("find " .. build_path .. " -type f -perm +111 | head -n 1")
-- 	local result = handle and handle:read("*a") or ""
-- 	if handle then
-- 		handle:close()
-- 	end
-- 	return vim.fn.trim(result)
-- end

-- Configure Adapters
if is_macos then
	dap.adapters.codelldb = {
		type = "server",
		port = "${port}",
		executable = {
			command = mason_path .. "/bin/codelldb",
			args = { "--port", "${port}" },
		},
	}
else
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = mason_path .. "/bin/OpenDebugAD7",
	}
end

-- Configurations
local common_config = {
	name = "Launch CMake Executable",
	request = "launch",
	program = function()
		local exe = find_executable()
		return vim.fn.input("Path to executable: ", exe ~= "" and exe or vim.fn.getcwd() .. "/", "file")
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	runInTerminal = true,
	args = {},
	setupCommands = {
		{
			text = "-enable-pretty-printing",
			description = "enable pretty printing",
			ignoreFailures = false,
		},
	},
}

if is_macos then
	common_config.type = "codelldb"
else
	common_config.type = "cppdbg"
end

dap.configurations.cpp = { common_config }
dap.configurations.c = { common_config }

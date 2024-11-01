local keymap = vim.keymap

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")


-- Resize split
-- keymap.set("n", "<C-w><left>", ":vertical resize +10<Return>", opts)
-- keymap.set("n", "<C-w><right>", ":vertical resize -10<Return>", opts)
-- keymap.set("n", "<C-w><up>", ":horizontal resize +10<Return>", opts)
-- keymap.set("n", "<C-w><down>", ":horizontal resize -10<Return>", opts)

keymap.set("n", "<A-h>", ":vertical resize +10<Return>", opts)
keymap.set("n", "<A-l>", ":vertical resize -10<Return>", opts)
keymap.set("n", "<A-k>", ":horizontal resize +10<Return>", opts)
keymap.set("n", "<A-j>", ":horizontal resize -10<Return>", opts)

-- remove focus from terminal
keymap.set('t', '<leader>t', [[<C-\><C-n>]], opts)

-- New tab
keymap.set("n", "<leader>to", ":tabnew<Return>", opts)
keymap.set("n", "<leader>bd", ":tabclose<Return>", opts)
keymap.set("n", "<s-h>", ":tabprev<Return>", opts)
keymap.set("n", "<s-l>", ":tabnext<Return>", opts)

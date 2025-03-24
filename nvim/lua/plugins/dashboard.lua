return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
" ▄▄▄██▀▀▀▓█████▄ ",
"   ▒██   ▒██▀ ██▌",
"   ░██   ░██   █▌",
"▓██▄██▓  ░▓█▄   ▌",
" ▓███▒   ░▒████▓ ",
" ▒▓▒▒░    ▒▒▓  ▒ ",
" ▒ ░▒░    ░ ▒  ▒ ",
" ░ ░ ░    ░ ░  ░ ",
" ░   ░      ░    ",
"          ░      "
          },
          center = {
            { action = "Telescope oldfiles", desc = " Recent files",    icon = " ", key = "r" },
            { action = "qa", desc = " Quit",            icon = " ", key = "q" },
            { action = "enew", desc = " New File",            icon = " ", key = "n" },
          }
        }
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  }
}

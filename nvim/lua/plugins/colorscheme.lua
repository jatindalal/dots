return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      local bg_dark = "#16161e"

      require("tokyonight").setup({
        style = "night",
        terminal_colors = true,
        styles = {
          sidebars = "dark",
          floats = "dark",
        },
        day_brightness = 0.3,
        dim_inactive = false,
        lualine_bold = false,
        on_colors = function(colors)
          colors.bg = bg_dark
        end,
      })
      vim.cmd[[colorscheme tokyonight]]

    end,
  }
}

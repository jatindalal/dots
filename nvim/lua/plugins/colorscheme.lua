return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_background = 'light'
      -- vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_cursor = 'orange'
      vim.g.gruvbox_material_transparent_background = '2'
      vim.cmd.colorscheme('gruvbox-material')
    end
  }
}

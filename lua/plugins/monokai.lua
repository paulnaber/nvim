return {
  'loctvl842/monokai-pro.nvim',
  config = function()
    -- Set the color scheme after loading
    vim.g.monokai_pro_filter = 'spectrum'
    vim.cmd 'colorscheme monokai-pro'
  end,
}

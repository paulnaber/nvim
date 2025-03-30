return {
  {
    'justinmk/vim-sneak',
    event = 'VeryLazy',
    config = function()
      -- Optional: Map sneak to 's' instead of 'f'/'t' motions
      vim.api.nvim_set_keymap('n', 's', '<Plug>Sneak_s', {})
      vim.api.nvim_set_keymap('n', 'S', '<Plug>Sneak_S', {})
      vim.api.nvim_set_keymap('v', 's', '<Plug>Sneak_s', {})
      vim.api.nvim_set_keymap('v', 'S', '<Plug>Sneak_S', {})

      -- Optional: Enable case-sensitive search
      vim.g['sneak#use_ic_scs'] = 1
    end,
  },
}

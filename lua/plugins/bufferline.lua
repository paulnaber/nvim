local keymaps = require 'keymaps'
return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  keys = {
    { keymaps.bufferline.toggle_pin, '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { keymaps.bufferline.delete_non_pinned, '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    {
      keymaps.bufferline.delete_all_other,
      function()
        local current_buf = vim.api.nvim_get_current_buf()
        for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
          if bufnr ~= current_buf and vim.api.nvim_buf_is_loaded(bufnr) then
            vim.api.nvim_command('bdelete ' .. bufnr)
          end
        end
      end,
      { desc = 'Close all other buffers' },
    },
    { keymaps.bufferline.close_current, '<Cmd>bdelete<CR>', desc = 'Delete Current Buffer' },
    -- { keymaps.bufferline.close_right, '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    -- { keymaps.bufferline.close_left, '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { keymaps.bufferline.cycle_prev, '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { keymaps.bufferline.cycle_next, '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    -- { keymaps.bufferline.move_prev, '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
    -- { keymaps.bufferline.move_next, '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
  },
  opts = {
    options = {
      diagnostics = 'nvim_lsp',
      always_show_bufferline = false,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
        {
          filetype = 'snacks_layout_box',
        },
      },
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}

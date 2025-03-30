return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '<leader>e',
      function()
        local neotree = require 'neo-tree.command'
        if vim.bo.filetype == 'neo-tree' then
          vim.cmd 'Neotree close'
        else
          vim.cmd 'Neotree focus'
        end
      end,
      desc = 'Toggle NeoTree focus',
      silent = true,
    },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Always show hidden files
      },
      window = {
        width = 40, -- Increased width
        mappings = {
          ['l'] = 'open', -- Open files and expand directories
          ['h'] = 'close_node', -- Close directories
        },
      },
    },
  },
}

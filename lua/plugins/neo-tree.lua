local keymaps = require 'keymaps'
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
      keymaps.neotree.openclose,
      function()
        local neotree = require 'neo-tree.command'
        if vim.bo.filetype == 'neo-tree' then
          -- If already in Neo-tree, close it
          vim.cmd 'Neotree close'
        else
          -- If inside a file, open Neo-tree and reveal the file
          vim.cmd 'Neotree reveal'
        end
      end,
      desc = 'Toggle NeoTree focus and reveal file',
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
          [keymaps.neotree.open] = 'open', -- Open files and expand directories
          [keymaps.neotree.close] = 'close_node', -- Close directories
        },
      },
    },
  },
}

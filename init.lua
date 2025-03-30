-- Startingpoint was the kickstart.nvim repo by @tjdevries
-- https://github.com/nvim-lua/kickstart.nvim
require 'settings'
require 'keymaps'
require 'autocommands'

-- Lazy Plugin Manager
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath,
  }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Load Plugins
require('lazy').setup({
  'tpope/vim-sleuth',
  require 'plugins.telescope', -- fuzzy finder of everything (files, buffer, ...)
  require 'plugins.gitsigns', -- git blame stuff
  require 'plugins.which-key', -- shows helpful information about what to do
  require 'plugins.lazydev',
  require 'lsp', -- language server protocol setup, add languages here
  require 'plugins.autoformat', -- format on save
  require 'plugins.autocompletion',
  -- require 'plugins.tokyonight', -- themes
  require 'plugins.monokai', -- themes
  require 'plugins.todo-comments', -- highlighings
  require 'plugins.mini', -- collection of many smaller plugins
  require 'plugins.treesitter', -- better syntax highlighing and more
  -- require 'plugins.debug',
  -- require 'plugins.indent_line',
  -- require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.neo-tree', -- file tree, git tree
  require 'plugins.lazygit',
  -- require 'plugins.sneak',
  -- require 'plugins.harpoon'
  -- require 'plugins.bufferline',
  require 'plugins.supermaven',
  require 'plugins.flash',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

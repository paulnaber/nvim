-- keymaps.lua
local M = {}

M.telescope = {
  find_files = '<leader><leader>',
  live_grep = '<leader>/',
  help = '<leader>sh',
  keymaps = '<leader>sk',
  select_telecope = '<leader>ss',
  current_word = '<leader>sw',
  resume = '<leader>sr',
  recent_files = '<leader>s.',
  existing_buffers = '<leader>se',
  nvim_config = '<leader>sn',
}
M.autoformat = { format = '<leader>f' }
M.autocompletion = {
  format = '<leader>f',
  select_next_item = '<C-n>',
  -- select_next_item = '<Tab>',
  select_prev_item = '<C-p>',
  scroll_docs_back = '<C-b>',
  scroll_docs_forward = '<C-f>',
  -- confirm = '<C-y>',
  confirm = '<CR>',
  complete = '<C-Space>',
}
M.gitsigns = {
  --   stage_hunk = '<leader>hs',
  reset_hunk = '<leader>gr',
  --   stage_buffer = '<leader>hS',
  --   reset_buffer = '<leader>hR',
  preview_hunk = '<leader>gp',
  --   blame_line = '<leader>hb',
  diffthis = '<leader>gd',
}
M.lazygit = { open = '<leader>gg' }
M.neotree = { toggleTree = '<leader>e', toggleGitTree = '<leader>ge', open = 'l', close = 'h' }
M.lsp = {
  goto_definition = 'gd',
  goto_declaration = 'gD',
  goto_references = 'gr',
  goto_implementation = 'gI',
  goto_type_definition = '<leader>D',
  goto_document_symbols = '<leader>ds',
  goto_workspace_symbols = '<leader>ws',
  rename = '<leader>rn',
  hover = 'gh',
  code_action = '<leader>ca',
}
M.bufferline = {
  toggle_pin = '<leader>tp',
  delete_non_pinned = '<leader>tw',
  delete_all_other = '<leader>to',
  close_current = '<leader>td',
  cycle_prev = '<S-h>',
  cycle_next = '<S-l>',
}
M.harpoon = {
  harpoon_file = '<leader>H',
  quick_menu = '<leader>h',
  leader = '<leader>', -- 1 to 9 for quick harpooning
}
-- visual multi
-- ctrl + n -> visually select word
-- following n -> select next word (multi selection)
-- do c, d, etc -> edit multi selection
-- skip words with q

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- easy marks
vim.keymap.set('n', '<c-1>', 'mA')
vim.keymap.set('n', '<c-2>', 'mB')
vim.keymap.set('n', '<c-3>', 'mC')
vim.keymap.set('n', '<c-4>', 'mD')
vim.keymap.set('n', '<S-1>', "'A")
vim.keymap.set('n', '<S-2>', "'B")
vim.keymap.set('n', '<S-3>', "'C")
vim.keymap.set('n', '<S-4>', "'D")

-- splits quit with :q
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })

-- vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit :q' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true, desc = 'Save file' })

vim.keymap.set('n', 'U', '<C-r>', { desc = 'Redo' })

-- vim.keymap.set('n', 'J', '5jzz')
-- vim.keymap.set('n', 'K', '5kzz')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

return M

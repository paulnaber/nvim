-- keymaps.lua
local M = {}

M.telescope = { find_files = '<leader><leader>', live_grep = '<leader>/' }
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
  stage_hunk = '<leader>hs',
  reset_hunk = '<leader>hr',
  stage_buffer = '<leader>hS',
  reset_buffer = '<leader>hR',
  preview_hunk = '<leader>hp',
  blame_line = '<leader>hb',
  diffthis = '<leader>hd',
}
M.lazygit = { open = '<leader>gg' }
M.neotree = { openclose = '<leader>e', open = 'l', close = 'h' }
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

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

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

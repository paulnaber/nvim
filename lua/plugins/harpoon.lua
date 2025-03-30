return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim'},
    config = function()
        local harpoon = require 'harpoon'

        -- Ensure Harpoon is properly set up
        harpoon:setup()

        -- Explicitly initialize settings if they are nil
        if not harpoon.settings then harpoon.settings = {} end

        -- Access Harpoon UI and list modules
        local harpoon_ui = require 'harpoon.ui'
        local harpoon_list = harpoon:list() -- Get the list of marked files

        -- Keymaps
        vim.keymap.set('n', '<leader>ha', function()
            harpoon_list:add() -- Add current file to Harpoon
        end, {desc = 'Harpoon Add File'})

        vim.keymap.set('n', '<leader>Tab', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        vim.keymap.set('n', '<leader>hl', function()
            harpoon_list:next() -- Go to next file
        end, {desc = 'Harpoon Next'})

        -- vim.keymap.set('n', '<leader>hh', function()
        --   harpoon_list:next() -- Go to next file
        -- end, { desc = 'Harpoon Next' })
    end
}

return {
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
            }
            vim.keymap.set('n', '<leader>gph', ":Gitsigns preview_hunk<CR>", { desc = "Gitsigns [p]review [h]unk" })
            vim.keymap.set('n', "<leader>gbl", ":Gitsigns blame_line<CR>", { desc = "Gitsigns [b]lame [l]ine" })
            vim.keymap.set('n', "<leader>gbf", ":Gitsigns blame<CR>", { desc = "Gitsigns [b]lame [f]ile" })
        end
    },
}



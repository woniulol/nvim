return {
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require('gitsigns').setup({

                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },

                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns
                    local function map(mode, l, r, desc)
                        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc, })
                    end

                    map("n", "<leader>gsh", gs.stage_hunk, "Gitsigns [s]stage [h]unk")
                    map("n", "<leader>grh", gs.reset_hunk, "Gitsigns [r]eset [h]unk")

                    map("v", "<leader>gsh", function() gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })end, "Gitsigns [s]stage [h]unk")
                    map("v", "<leader>grh", function() gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })end, "Gitsigns [r]eset [h]unk")

                    map("n", "<leader>gsb", gs.stage_buffer, "Gitsigns [s]stage [b]uffer")
                    map("n", "<leader>grb", gs.reset_buffer, "Gitsigns [r]eset [b]uffer")

                    map("n", "<leader>guh", gs.undo_stage_hunk, "Gitsigns [u]ndo [h]unk")
                    map("n", "<leader>gph", gs.preview_hunk, "Gitsigns [p]review [h]unk")

                    map("n", "<leader>gbl", function() gs.blame_line({ full = true }) end, "Gitsigns [b]lame [l]ine")
                    map("n", "<leader>gB", gs.toggle_current_line_blame, "Gitsigns [b]lame [l]ine")

                    map("n", "<leader>gsd", gs.diffthis, "Gitsigns [s]how [d]iff")
                    map("n", "<leader>gsD", function() gs.diffthis("~") end, "Gitsigns [s]how [D]iff [~]")
                end

            })
        end
    },
}



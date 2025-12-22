return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.2.0",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                cond = function()
                    return vim.fn.executable "make" == 1
                end,
            },
            { "nvim-telescope/telescope-ui-select.nvim" },
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    fzf = {},
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown(),
                    },
                },
                defaults = {
                    borderchars = { '━', '┃', '━', '┃', '┏', '┓', '┛', '┗'},
                },
            })
            require("telescope").load_extension("fzf")
            require("telescope").load_extension("ui-select")

            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>d", builtin.diagnostics, { desc = "Telescope [f]ind [d]iagnostics" })
            vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Telescope [f]ind [h]elp" })
            vim.keymap.set("n", "<leader>cs", builtin.spell_suggest, { desc = "Telescope [c]heck [s]pell" })
            vim.keymap.set("n", "<leader>ob", builtin.buffers, { desc = "Telescope [o]pen [b]uffers" })
            vim.keymap.set("n", "<leader>of", builtin.find_files, { desc = "Telescope [o]pen [f]iles" })
            vim.keymap.set("n", "<leader>ok", builtin.keymaps, { desc = "Telescope [o]pen [k]eymaps" })
            vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Telescope [l]ive [g]rep" })
            vim.keymap.set("n", "<leader>ffb", builtin.current_buffer_fuzzy_find, { desc = "Telescope [f]uzz [f]ind current buff" })

            vim.keymap.set("n", "<leader>oc", function()
                builtin.find_files { cwd = vim.fn.stdpath "config" }
            end, { desc = "Telescope [o]pen [c]onfigs" })

        end
    },
}


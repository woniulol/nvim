return {
    {
        -- Collection of various small independent plugins/modules
        'echasnovski/mini.nvim',
        config = function()

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require('mini.surround').setup()

            -- Move line(s) in any directions.
            require('mini.move').setup()

            -- Easy comment/uncomment code lines/block.
            require('mini.comment').setup({
                options = {
                    -- Whether to ignore blank lines when commenting
                    ignore_blank_line = false,
                }
            })

            -- Auto pairing.
            require("mini.pairs").setup({})

            -- Trailing spaces
            require('mini.trailspace').setup()

            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*",
                callback = function()
                    require("mini.trailspace").trim()
                end,
            })

        end,
    },
}

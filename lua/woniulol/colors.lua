vim.cmd.colorscheme "catppuccin-macchiato"

-- Keep line numbers to be bold.
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#89B4FA', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#CDD6F4', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#EBA0AC', bold=true })


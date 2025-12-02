vim.cmd.colorscheme "catppuccin"

-- Keep line numbers to be bold.
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#89B4FA', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#CDD6F4', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#EBA0AC', bold=true })

vim.o.winborder = 'rounded'
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#89B4FA", bold = true })
-- vim.api.nvim_set_hl(0, "StatusLine", {
--  fg = "#EEF1FF",   -- light, readable, Catppuccin-consistent
--  bg = "#7395D8",   -- darker, softer blue
--  bold = true,
-- })
-- vim.api.nvim_set_hl(0, "StatusLineNC", {
--   fg = "#313244",
--  bg = "#585B70",
-- })


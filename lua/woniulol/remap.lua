-- NOTE: About MacOS Keybidings
--
-- CTRL, OPTION, COMMAND key might not be mapped properly.
-- Especially when you have a terminal emulator, such as Alacritty.
--
-- It might affect certain default keybindings of some plugins, such as mini.move.
--
-- For Alacritty, set window.option_as_alt = "Both"


-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal.
vim.g.have_nerd_font = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Status line already show the mode
vim.o.showmode = false

-- Convert tabs to spaces
vim.o.expandtab = true
vim.o.shiftwidth = 4

-- Sync clipboard between Os and Neovim, ssh and local.
-- https://github.com/neovim/neovim/discussions/28010#discussioncomment-9877494
vim.o.clipboard = "unnamedplus"
local is_ssh = vim.env.SSH_TTY ~= nil or vim.env.SSH_CONNECTION ~= nil
if is_ssh then
    local function paste()
        return {
            vim.fn.split(vim.fn.getreg('"'), "\n"),
            vim.fn.getregtype(""),
        }
    end
    vim.g.clipboard = {
        name = "OSC 52",
        copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
            ["+"] = paste,
            ["*"] = paste,
        },
    }
end

-- Enable spell checking from nvim
vim.o.spelllang = "en_us"
vim.o.spell = true

-- Decrease update time
vim.o.updatetime = 200

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Prevent cursor drop to bottom
vim.o.scrolloff = 20

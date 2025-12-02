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

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Status line already show the mode
vim.o.showmode = false

-- Convert tabs to spaces
vim.o.expandtab = true
vim.o.shiftwidth = 4

-- Sync clipboard between Os and Neovim.
vim.o.clipboard = "unnamedplus"

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Enable spell checking from nvim
vim.o.spelllang = "en_us"
vim.o.spell = true


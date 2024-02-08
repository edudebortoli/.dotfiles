-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- local discipline = require("eduardo.discipline")
-- local Util = require("lazyvim.util")
-- local term_map = require("terminal.mappings")

-- discipline.cowboy()

vim.g.mapleader = " "

keymap.set("n", "x", '"_x')

-- Increment/decrement

-- Del/copy/replace a word any position
keymap.set("n", "dw", "diw")
keymap.set("n", "cw", "ciw")
keymap.set("n", "yw", "yiw")

-- Select all
--keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
-- keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", opts)
keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)
-- Move window
--keymap.set('n', '<Space>', '<C-w>w')
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Terminal
-- keymap.set("n", "<C-t>", function()
--   Util.terminal()
-- end, { desc = "Terminal (cwd)" })

-- the primeagen
-- move lines in Visual mode with J or K
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--center when jump
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "fr", ":Format<CR>")
--keymap.del("n", "<leader>ft")
--keymap.del("n", "<leader>fT")
--keymap.del("n", "<c-/>")
--keymap.del("n", "<c-_>")
--keymap.del("n", "<leader>gg")

keymap.set('n', '<Leader>lg', ':LazyGit<CR>', { noremap = true, silent = true })
-- lazygit
--keymap.set("n", "<leader>lg", function()
--Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
--end, { desc = "Lazygit (root dir)" })
--keymap.set({ "n", "i", "v" }, "<C-/>", term_map.toggle)
--keymap.set({ "n", "i", "v" }, "<C-_>", term_map.toggle)

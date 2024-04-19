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
--keymap.set("n", "ss", ":split<Return><C-w>w", opts)
--keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)
-- Move window
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

keymap.set("n", "<Leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })
-- lazygit
--keymap.set("n", "<leader>lg", function()
--Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
--end, { desc = "Lazygit (root dir)" })
--keymap.set({ "n", "i", "v" }, "<C-/>", term_map.toggle)
--keymap.set({ "n", "i", "v" }, "<C-_>", term_map.toggle)

keymap.set("t", "<Esc>", "<C-\\><C-n><CR>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

--vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-w>h", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-w>l", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-w>j", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-w>k", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Delete without yank
keymap.set("n", "x", '"_x')

-- the primeagen
-- move lines in Visual mode with J or K
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--center when jump
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Go to normal mode in terminal and jj
keymap.set("t", "<Esc>", "<C-\\><C-n><CR>")
keymap.set("i", "jj", "<Esc>")

-- Clear search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
keymap.set("n", "<C-k>", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "<C-j>", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

keymap.set("n", "<leader>v", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Takuya
-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

vim.api.nvim_set_keymap("n", "<leader>t", ":lua require('edudebortoli.open-env').open_env_file()<CR>", opts)

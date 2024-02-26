require("harpoon").setup()
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>a", function()
	mark.add_file()
	print("harpooned")
end)

vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-\\>", function()
	term.gotoTerminal(1)
end, opts)

vim.keymap.set("n", "<C-h>", function()
	ui.nav_file(1)
end, opts)
vim.keymap.set("n", "<C-t>", function()
	ui.nav_file(2)
end, opts)
vim.keymap.set("n", "<C-n>", function()
	ui.nav_file(3)
end, opts)
vim.keymap.set("n", "<C-s>", function()
	ui.nav_file(4)
end, opts)

require("eduardo.remap")
require("eduardo.options")
require("eduardo.lazy_init")
vim.cmd([[colorscheme nvimgelion]])

function Transparent()
	-- Set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
end

-- Create a command to call the function
vim.api.nvim_create_user_command("Transparent", function()
	Transparent()
end, { nargs = 1 })

Transparent()

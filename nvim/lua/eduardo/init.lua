require("eduardo.remap")
require("eduardo.options")
require("eduardo.lazy_init")
vim.cmd([[colorscheme tokyobones]])

function Hide()
	-- Set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
end

function Chat()
	return vim.fn["codeium#Chat"]()
end

-- Create a command to call the function
vim.api.nvim_create_user_command("Hide", function()
	Hide()
end, { nargs = 0 })

vim.api.nvim_create_user_command("Chat", function()
	Chat()
end, { nargs = 0 })

Hide()

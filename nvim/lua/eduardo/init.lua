require("eduardo.remap")
require("eduardo.options")
require("eduardo.lazy_init")
vim.cmd([[colorscheme nvimgelion]])

-- Function to change colorscheme and set transparent background
function ColorScheme(color)
	color = color or "nvimgelion" -- Default to a colorscheme if none provided
	vim.cmd("colorscheme " .. color)

	-- Set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
end

-- Create a command to call the function
vim.api.nvim_create_user_command("Color", function(opts)
	ColorScheme(opts.args)
end, { nargs = 1 })

ColorScheme()

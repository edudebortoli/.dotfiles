return {
	"ThePrimeagen/harpoon",
	branch = "harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui_close = true,
			},
		})
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
			print("Harpooned")
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { noremap = true })
		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-y>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}

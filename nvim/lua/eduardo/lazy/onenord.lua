return {
	"rmehri01/onenord.nvim",
	lazy = true,
	priority = 1000,
	config = function()
		require("onenord").setup()
	end,
}

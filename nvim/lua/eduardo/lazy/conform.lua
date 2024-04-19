return { -- Autoformat
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<C-f>",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			dart = { "dart_format" },
			lua = { "stylua" },
			python = { "isort", "black" },
			svelte = { { "prettierd", "prettier" } },
			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			graphql = { { "prettierd", "prettier" } },
			java = { "google-java-format" },
			kotlin = { "ktlint" },
			ruby = { "standardrb" },
			markdown = { { "prettierd", "prettier" } },
			erb = { "htmlbeautifier" },
			html = { { "prettierd", "prettier", "html" } },
			bash = { "beautysh" },
			proto = { "buf" },
			rust = { "rustfmt" },
			yaml = { "yamlfix" },
			toml = { "taplo" },
			css = { { "prettierd", "prettier" } },
			scss = { { "prettierd", "prettier" } },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			-- javascript = { { "prettierd", "prettier" } },
		},
	},
}

--[[
require("conform").setup({
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
    async = true
  },
  formatters_by_ft = {
    dart = { "dart_format" },
    lua = { "stylua" },
    python = { "isort", "black" },
    svelte = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    graphql = { { "prettierd", "prettier" } },
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    ruby = { "standardrb" },
    markdown = { { "prettierd", "prettier" } },
    erb = { "htmlbeautifier" },
    html = { { "prettierd", "prettier", "html" } },
    bash = { "beautysh" },
    proto = { "buf" },
    rust = { "rustfmt" },
    yaml = { "yamlfix" },
    toml = { "taplo" },
    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },
  },
})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
--]]

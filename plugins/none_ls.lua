return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.diagnostics.yamllint,
				null_ls.builtins.formatting.erb_lint,
				null_ls.builtins.formatting.htmlbeautifier,
				null_ls.builtins.formatting.mdformat,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}

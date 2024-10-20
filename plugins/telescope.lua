return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, {})
			-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
			-- vim.keymap.set("n", "<leader>fr", builtin.resume, {})
			-- vim.keymap.set("n", "<leader>fs", builtin.builtin, {})
			-- vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>f.", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").setup()
			require("telescope").load_extension("fzf")
		end,
	},
	-- Fuzzy find in live_grep
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("fzf-lua").setup({})
			local builtin = require("fzf-lua")
			vim.keymap.set("n", "<leader>fg", builtin.live_grep_native, {})
		end,
	},
}

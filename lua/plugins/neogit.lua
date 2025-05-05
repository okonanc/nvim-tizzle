return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed.
		"nvim-telescope/telescope.nvim", -- optional
		--"ibhagwan/fzf-lua",              -- optional
		--"echasnovski/mini.pick",         -- optional
	},
	keys = {
		{
			"<leader>gs",
			function()
				require("neogit").open()
			end,
			desc = "Open Neogit",
		},
		{ "<leader>gC", ":Neogit commit<CR>", desc = "Neogit commit" },
		{ "<leader>gp", ":Neogit pull<CR>", desc = "Neogit pull" },
		{ "<leader>gP", ":Neogit push<CR>", desc = "Neogit push" },
		{ "<leader>gb", ":Telescope git_branches<CR>", desc = "Neogit show branches" },
	},
}

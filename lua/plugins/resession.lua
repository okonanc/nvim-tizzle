return {
	"stevearc/resession.nvim",
	dependencies = { "romgrk/barbar.nvim" },
	opts = {
		extensions = {
			barbar = {},
		},
	},
	keys = {
		{
			"<leader>ss",
			function()
				require("resession").save()
			end,
			desc = "[S]ession [S]ave",
		},
		{
			"<leader>sl",
			function()
				require("resession").load()
			end,
			desc = "[S]ession [L]oad",
		},
		{
			"<leader>sd",
			function()
				require("resession").delete()
			end,
			desc = "[S]ession [D]elete",
		},
		{
			"<leader>sD",
			function()
				require("resession").detach()
			end,
			desc = "[S]ession [D]etach",
		},
		{
			"<leader>sv",
			function()
				require("resession").list()
			end,
			desc = "[S]ession [V]iew",
		},
	},
}

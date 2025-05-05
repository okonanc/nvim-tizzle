return {
	"chentoast/marks.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"m]",
			function()
				require("marks").set_next()
			end,
			desc = "Move to next mark in buffer",
		},
		{
			"m[",
			function()
				require("marks").set_prev()
			end,
			desc = "Move to previous mark in buffer",
		},
	},
}

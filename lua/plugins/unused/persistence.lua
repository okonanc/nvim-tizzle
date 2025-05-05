return -- Lua
{
	"folke/persistence.nvim",
	enabled = false,
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {},
	keys = {
		-- load the session for the current directory
		{
			"<leader>sl",
			function()
				require("persistence").load()
			end,
			desc = "[S]ession [L]oad",
		},
		{
			"<leader>ss",
			function()
				require("persistence").select()
			end,
			desc = "[S]elect a [S]ession to load",
		},
		{
			"<leader>sL",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Last [S]ession will [L]oaded",
		},
		{
			"<leader>sS",
			function()
				require("persistence").stop()
			end,
			desc = "[S]top persistence [S]ession ",
		},
	},
}

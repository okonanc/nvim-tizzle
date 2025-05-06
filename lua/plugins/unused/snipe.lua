return {
	"leath-dub/snipe.nvim",
	keys = {
		{
			"<S-l>",
			function()
				require("snipe").open_buffer_menu()
			end,
			desc = "Open Snipe buffer menu",
		},
	},
	config = function()
		local snipe = require("snipe")
		snipe.setup({
			hints = {
				-- Charaters to use for hints (NOTE: make sure they don't collide with the navigation keymaps)
				---@type string
				dictionary = "asdfgwertyuio",
			},
			navigate = {
				-- In case you changed your mind, provide a keybind that lets you
				-- cancel the snipe and close the window.
				---@type string|string[]
				cancel_snipe = "<esc>",
				close_buffer = "d",
			},
			sort = "default",
		})
	end,
	opts = {},
}

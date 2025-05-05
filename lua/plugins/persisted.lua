return -- Lua
{
	"olimorris/persisted.nvim",
	enabled = false,
	event = "BufReadPre", -- Ensure the plugin loads only when a buffer has been loaded
	opts = {
		autostart = true,
		save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- Resolves to ~/.local/share/nvim/sessions/
		use_git_branch = true,
		telescope = {
			mappings = { -- Mappings for managing sessions in Telescope
				copy_session = "<C-c>",
				change_branch = "<C-b>",
				delete_session = "<C-d>",
			},
			icons = { -- icons displayed in the Telescope picker
				selected = " ",
				dir = "  ",
				branch = " ",
			},
		},
	},
}

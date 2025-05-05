return {
	"romgrk/barbar.nvim",
	-- enabled = false,
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		animation = true,

		-- Automatically hide the tabline when there are this many buffers left.
		-- Set to any valu >=0 to enable
		auto_hide = false,

		-- Enable/disable current/total tabpages indicator (top right corner)
		tabpages = true,

		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
	keys = {
		{ "<A-,>", "<CMD>BufferPrevious<CR>", desc = "Previous buffer" },
		{ "<A-.>", "<CMD>BufferNext<CR>", desc = "Next buffer" },
		{ "<A-c>", "<CmD>BufferClose<CR>", desc = "Close buffer" },
	},
}

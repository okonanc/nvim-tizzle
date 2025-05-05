return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function()
		return {
			defaults = {
				path_display = {
					filename_first = {
						reverse_directories = true,
					},
				},
				mappings = {
					n = {
						["d"] = require("telescope.actions").delete_buffer,
						["q"] = require("telescope.actions").close,
					},
				},
			},
		}
	end,
	keys = {
		{
			"<leader>ff",
			-- "<CMD>Telescope frecency workspace=CWD theme=ivy<CR>",
			function()
				require("telescope.builtin").find_files({ hidden = "true" })
			end,
			desc = "[F]ind [F]iles in current working directory",
		},
		{
			"<leader><space>",
			"<CMD>e #<CR>",
			desc = "Alternate buffer",
		},
		{
			"<S-H>",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Show open buffers",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "[F]ind by [G]repping current project directory",
		},
		{
			"<leader>fC",
			function()
				require("telescope.builtin").find_files({ cwd = "~/.config/" })
			end,
			desc = "[F]ind in NeoVim [C]onfiguration",
		},
		{
			"<leader>fc",
			function()
				require("telescope.builtin").find_files({ cwd = "~/.config/nvim" })
			end,
			desc = "[F]ind in NeoVim [C]onfiguration",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tag()
			end,
			desc = "[F]ind [H]elp",
		},
		{
			"<leader>fk",
			function()
				require("telescope.builtin").keymaps()
			end,
			desc = "[F]ind [K]eymaps",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").builtin()
			end,
			desc = "[F]ind [B]uiltin Telescope",
		},
		{
			"<leader>fw",
			function()
				require("telescope.builtin").grep_string()
			end,
			desc = "[F]ind current [W]ord",
		},
		{
			"<leader>fo",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "[F]ind [O]ld files",
		},
		{
			"<leader>/",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			desc = "[/] Live grep the current buffer",
		},
	},
}

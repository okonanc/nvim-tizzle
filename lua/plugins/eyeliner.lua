return {
	"jinh0/eyeliner.nvim",
	config = function()
		require("eyeliner").setup({
			highlight_on_key = true,
			dim = true,
		})
	end,
	opts = {
		vim.api.nvim_set_hl(0, "EyelinerPrimary", { bg = "#FF0000", fg = "#FFFFFF", bold = true, underline = true }),
		vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = "#ffffff", underline = true }),
	},
}

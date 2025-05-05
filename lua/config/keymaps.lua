-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Page movement bindings
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half page down and center display" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half page up and center display" })

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent block left" })
vim.keymap.set("v", ">", ">gv", { desc = "Inden block right" })

vim.keymap.set({ "n", "o", "x" }, "<s-h>", "^", { desc = "Jump to beginning of line" })
vim.keymap.set({ "n", "o", "x" }, "<s-l>", "g_", { desc = "Jump to end of line" })

-- Move block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Block Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Block Up" })

vim.keymap.set("i", "jj", "<Esc>", { noremap = false })
vim.keymap.set("i", "jk", "<Esc>", { noremap = false })

vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")

-- Get out Q
vim.keymap.set("n", "Q", "<nop>")

-- close buffer
vim.keymap.set("n", "<leader>q", "<CMD>bd<CR>", { desc = "Close Buffer" })

-- Close buffer without closing split
vim.keymap.set("n", "<leader>w", "<CMD>bp|bd #<CR>", { desc = "Close Buffer; Retain Split" })

-- Save Buffer
vim.keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "Save Buffer" })

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file e[x]ecutable" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>dw", "<CMD>set wrap!<CR>", { desc = "Toggle line wrap" })

vim.keymap.set("n", "<C-q>", "<CMD>qa<CR>", { desc = "Close nvim" })

-- search and replace
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- open diagnostics in a float box
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float mode" })

-- format file
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.opt.guicursor = "n-v-c:block,i:block,r-cr:block,sm:block"

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("x", "<leader>p", '"_dp')

vim.keymap.set("v", "<c-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<c-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>gtj", ":GoTagAdd json<CR>", { desc = "Adds json fields to go struct" })
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open file [E]xplorer" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>W", ":w<Enter>", { desc = "[w]rite file" })
vim.keymap.set("n", "<leader>p", ":bprev<Enter>", { desc = "[p]revious buffer" })
vim.keymap.set("n", "<leader>n", ":bnext<Enter>", { desc = "[n]ext buffer" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

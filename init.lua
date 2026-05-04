require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.treesitter"),
	require("plugins.yazi"),
	require("plugins.telescope"),
	require("plugins.which-key"),
	require("plugins.lua-nvim-lsp"),
	require("plugins.lsp"),
	require("plugins.autocomplete"),
	require("plugins.autoformat"),
	require("plugins.go-config"),
	require("plugins.gitsigns"),
	require("plugins.colortheme"),
	require("plugins.autopair"),
	require("plugins.tmux-navigator"),
	-- require("plugins.indent-blankline"),
})

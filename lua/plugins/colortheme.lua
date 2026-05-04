local colors = {
	{
		"catppuccin/nvim",
		"folke/tokyonight.nvim",
		"sho-87/kanagawa-paper.nvim",
		"rose-pine/neovim",
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
				},

				palette = {
					-- Override the builtin palette per variant
					-- moon = {
					--     base = '#18191a',
					--     overlay = '#363738',
					-- },
				},

				-- NOTE: Highlight groups are extended (merged) by default. Disable this
				-- per group via `inherit = false`
				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- StatusLine = { fg = "love", bg = "love", blend = 15 },
					-- VertSplit = { fg = "muted", bg = "muted" },
					-- Visual = { fg = "base", bg = "text", inherit = false },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})

			require("kanagawa").setup({
				transparent = true,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
						dragon = {
							syn = {
								keyword = "#8e7cab",
								operator = "#8197cf",
								type = "#8197cf",
								number = "#8197cf",
								property = "#cecb78",
							},
						},
						--           dragon = {
						--           syn = {
						--           parameter = "#ffa3a3", -- More vibrant orange
						--         fun = "#90b3fe",       -- Brighter blue
						--       keyword = "#ffef75",   -- Brighter purple
						--     constant = "#ffab7a",  -- Brighter orange
						--   string = "#b4e184",    -- Brighter green
						-- variable = "#d9b887",
						--           property = "#c7c7ff",
						--         type = "#ff7575",
						--       include = "#c48aff"
						--   }
						--    }
					},
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						TelescopeTitle = { fg = theme.ui.special, bold = true },
						TelescopePromptNormal = { bg = theme.ui.bg_p1 },
						TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
						TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
						TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
						TelescopePreviewNormal = { bg = theme.ui.bg_dim },
						TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
						Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
						PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
						PmenuSbar = { bg = theme.ui.bg_m1 },
						PmenuThumb = { bg = theme.ui.bg_p2 },
					}
				end,
			})

			vim.cmd.colorscheme("kanagawa-dragon")

			-- You can configure highlights by doing something like:
			vim.cmd.hi("Comment gui=none")
		end,
	},
}

return colors

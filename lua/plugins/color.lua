return {
	-- ========================================
	--      My Own Colorscheme
	-- ========================================
	-- {
	--     "RaphaeleL/my_vivid",
	--         -- lazy = true,
	--     config = function()
	--         vim.cmd("colorscheme my_vivid")
	--         vim.cmd("hi @field guifg=#89A5AC")
	--         vim.cmd("hi @parameter guifg=#77B0DA")
	--             -- TODO: Better Color for Web-Dev 
	--     end
	-- },
	-- {
	--     -- "RaphaeleL/gruvbuddy.nvim",
	--         dir = "~/Developer/gruvbuddy.nvim",
	--         dependencies = {
	--             "tjdevries/colorbuddy.nvim",
	--         },
	--     config = function()
	--         require("colorbuddy").colorscheme("gruvbuddy")
	--     end
	-- },
	-- ========================================
	--      Some cool basic Colorschemes
	-- ========================================
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				transparent = true,
				overrides = function()
					return {
						StatusLine = { bg = "NONE" },
						StatusLineNC = { bg = "NONE" },
						TabLineSel = { bg = "NONE" },
						LineNr = { bg = "NONE" },
						CursorLineNr = { bg = "NONE" },
						SignColumn = { bg = "NONE" },
						GitSignsAdd = { bg = "NONE" },
						GitSignsChange = { bg = "NONE" },
						GitSignsDelete = { bg = "NONE" },
						DiagnosticSignError = { bg = "NONE" },
						DiagnosticSignWarn = { bg = "NONE" },
						DiagnosticSignInfo = { bg = "NONE" },
						DiagnosticSignHint = { bg = "NONE" },
						TelescopeBorder = { bg = "NONE" },
					}
				end,
				background = {
					dark = "dragon",
					light = "lotus"
				}
			})
			vim.cmd("colorscheme kanagawa")
		end
	},
	-- {
	--     "rose-pine/neovim",
	--     config = function()
	--         require("rose-pine").setup({ disable_background = true })
	--         vim.cmd("colorscheme rose-pine")
	--     end
	-- },
	-- {
	--     "catppuccin/nvim",
	--     name = "catppuccin",
	--     config = function()
	--         require("catppuccin").setup({
	--             background = {
	--                 light = "latte",
	--                 dark = "mocha",
	--             },
	--             transparent_background = true,
	--             integrations = {
	--                 illuminate = true
	--             }
	--         })
	--         vim.cmd("colorscheme catppuccin")
	--     end
	-- },
}

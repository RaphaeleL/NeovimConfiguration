-- Set wrap and spell in markdown
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "markdown" },
	callback = function()
		vim.opt_local.wrap = true
	end,
})

-- Remove statusline and tabline when in alpha
vim.api.nvim_create_autocmd({ "User" }, {
	pattern = { "AlphaReady" },
	callback = function()
		vim.cmd([[
            set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
            set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
        ]])
	end,
})

-- Fix Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

-- use 'q' to quit from some plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel", "lir" },
	callback = function()
		vim.cmd([[
            nnoremap <silent> <buffer> q :close <cr>
            set nobuflisted
        ]])
	end,
})

-- Autoformat on Save
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
-- 	callback = function()
-- 		vim.lsp.buf.formatting()
-- 	end,
-- })

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	pattern = { "plugins.lua" },
-- 	callback = function()
-- 		vim.cmd([[source <afile> | PackerSync]])
-- 	end,
-- })

-- Faster yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("HighlightYank", {}),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

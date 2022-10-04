local menu = require("which-key")

menu.setup({
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 20,
		},
		presets = {
			operators = false,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	key_labels = {
		["<space>"] = "SPC",
		["<cr>"] = "RET",
		["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "»",
		separator = "➜",
		group = "+",
	},
	popup_mappings = {
		scroll_down = "<c-d>",
		scroll_up = "<c-u>",
	},
	window = {
		border = "rounded",
		position = "bottom",
		margin = { 1, 0, 1, 0 },
		padding = { 1, 1, 1, 1 },
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 3,
		align = "left",
	},
	ignore_missing = true,
	hidden = { "<silent>", ":", ":", "<cr>", "call", "lua", "^:", "^ " },
	show_help = true,
	triggers = "auto",
	triggers_blacklist = {
		i = { "j", "k" },
		v = { "j", "k" },
	},
})

menu.register({
	["<Leader>"] = {
		[";"] = { ":Alpha<cr>", "Dashboard" },
		q = { ":q!<cr>", "Quit" },
		n = { ":noh<cr>", "No Highlighting" },
		f = { ":Telescope find_files<cr>", "Find files" },
		e = { ":NvimTreeToggle<cr>", "File Explorer" },
		u = { ":UndotreeToggle<cr>", "History" },
		r = { ":Jaq bang<cr>", "Run Code" },
		k = { ":CommentToggle<cr>", "Comment Line" },
		o = { ":Telescope lsp_document_symbols<cr>", "Outline" },
		l = { ":'<,'>CommentToggle<cr>", "Comment Block" },
		-- h = {
		--   name = "+Harpoon",
		--   n = { ":lua require('harpoon.ui').nav_next()<cr>", "Show Next" },
		--   p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Show Prev" },
		--   a = { ":lua require('harpoon.mark').add_file()<cr>", "Add File" },
		--   s = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Menu" },
		-- },
		b = {
			name = "+Buffer",
			b = { ":Telescope buffers<cr>", "Show buffers" },
			c = { ":bdelete<cr>", "Close Window" },
			v = { ":vsplit<cr>", "Vertical Split" },
			h = { ":split<cr>", "Horizontal Split" },
		},
		s = {
			name = "+Search (and Replace)",
			r = { ":Telescope oldfiles<cr>", "Open Recent File" },
			t = { ":Telescope live_grep<cr>", "Live Grep" },
			g = { ":lua require('spectre').open_visual()<cr>", "Search Replace in Project" },
			l = { ":lua require('spectre').open_file_search()<cr>", "Search Replace in File" },
		},
		d = {
			namde = "+Diagnostics",
			D = { ":Telescope lsp_definitions<cr>", "Goto Definition" },
			k = { ":Telescope lsp_declarations<cr>", "Goto Declaration" },
			i = { ":Telescope lsp_implementations<cr>", "Goto Implementation" },
			r = { ":Telescope lsp_references<cr>", "Goto References" },
			l = { ":lua vim.diagnostic.open_float()<cr>", "Line Diagnostic" },
			d = { ":Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Diagnostics Buffer" },
			w = { ":Telescope diagnostics<cr>", "Diagnostics Workspace" },
			s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
			f = { ":lua vim.lsp.buf.format { async = true }<cr>", "Format" },
			e = { ":LspInfo<cr>", "Info" },
			o = { ":LspInstallInfo<cr>", "Installer Info" },
			n = { ":lua vim.diagnostic.goto_next({buffer=0})<cr>", "Next Diagnostic" },
			N = { ":lua vim.diagnostic.goto_prev({buffer=0})<cr>", "Previous Diagnostic" },
		},
		a = {
			name = "+Actions",
			c = { ":lua vim.lsp.buf.declaration()<cr>", "Declaration" },
			a = { ":lua vim.lsp.buf.code_action()<cr>", "Code Actions" },
			R = { ":lua vim.lsp.buf.references()<cr>", "References" },
			D = { ":lua vim.lsp.buf.definition()<cr>", "Definition" },
			h = { ":lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
			q = { ":lua vim.diagnostic.setloclist()<cr>", "Set Location List" },
			I = { ":lua vim.lsp.buf.implementation()<cr>", "Implementation" },
			i = { ":lua vim.lsp.buf.hover()<cr>", "Informations" },
			s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
			S = { ":Telescope lsp_dynamic_workspace_symbols<cr>", "Symbols Workspace" },
		},
		g = {
			name = "+Git",
			s = { ":Telescope git_status<cr>", "Status" },
			l = { ":LazyGit<cr>", "LazyGit" },
			c = { ":Telescope git_commits<cr>", "Commits" },
			b = { ":Telescope git_branches<cr>", "Branches" },
			d = { ":Gitsigns diffthis HEAD<cr>", "Diff" },
			a = { ":Gitsigns blame_line<cr>", "Blame" },
			t = { ":Gitsigns toggle_signs<cr>", "Toggle Line" },
			n = { ":Gitsigns toggle_numhl<cr>", "Toggle Num" },
		},
		["."] = {
			name = "+Help",
			h = { ":lua require('telescope.builtin').help_tags()<cr>", "Configuration Help" },
			k = { ":Telescope keymaps<cr>", "Keymaps from Telescope" },
			K = { ":map<cr>", "Keymaps from Neovim" },
			c = { ":Telescope commands<cr>", "Commands" },
		},
		["p"] = {
			name = "+Packer",
			i = { ":PackerInstall<cr>", "Install" },
			s = { ":PackerSync<cr>", "Sync" },
			c = { ":PackerClean<cr>", "Clean" },
			C = { ":PackerCompile<cr>", "Compile" },
		},
		["t"] = {
			name = "+Terminal",
			t = { ":ToggleTerm<cr>", "Open Terminal" },
			f = { ":ToggleTerm direction=float<cr>", "Open Floating Terminal" },
		},
		["S"] = {
			name = "+UI",
			i = { ":IndentBlanklineToggle<cr>", "Indentline" },
			t = { ":Gitsigns toggle_signs<cr>", "Git Toggle Line" },
			n = { ":Gitsigns toggle_numhl<cr>", "Git Toggle Num" },
			c = { ":Telescope colorscheme<cr>", "Colorscheme" },
			m = { ":Mason<cr>", "LSP Package Manager (Mason)" },
			w = { ":set wrap<cr>", "Wrap" },
			W = { ":set nowrap<cr>", "Unwrap" },
		},
	},
})

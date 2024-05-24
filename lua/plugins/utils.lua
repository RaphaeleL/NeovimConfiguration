return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "isak102/telescope-git-file-history.nvim",
        },
        lazy = true,
        keys = {
            { "<leader>sf", ":Telescope find_files<cr>",                                                    desc = " Telescope: [S]how [F]uzzy File Finder" },
            { "<leader>sl", ":Telescope live_grep<cr>",                                                     desc = " Telescope: [S]how [L]ive Grep" },
            { "<leader>sg", ":Telescope git_files<cr>",                                                     desc = " Telescope: [S]how [G]it Files" },
            { "<leader>sd", ":Telescope diagnostics<cr>",                                                   desc = " Telescope: [S]how [D]iagnostics" },

            { "<leader>sb", ":Telescope buffers<cr>",                                                       desc = " Telescope: [S]how Buffers" },
            { "<leader>sk", ":Telescope keymaps<cr>",                                                       desc = " Telescope: [S]how [K]eymaps" },

            { "<leader>sh", ":lua require('telescope').extensions.git_file_history.git_file_history()<cr>", desc = " Telescope: [S]how Git [H]istory of File" },

        },
        config = function()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = {
                        "node_modules",
                        ".DS_Store",
                        ".git"
                    }
                },
                pickers = {
                    find_files = {
                        theme = "ivy",
                    },
                    colorscheme = {
                        enable_preview = true
                    }
                },
            })
        end,
    },
    {
        "terrortylor/nvim-comment",
        event = "VeryLazy",
        config = function()
            require("nvim_comment").setup()
        end,
        keys = {
            { "<Leader>l", ":CommentToggle<cr>" }
        }
    },
    {
        "nvim-pack/nvim-spectre",
        cmd = "Spectre",
        opts = { open_cmd = "noswapfile vnew" },
        keys = {
            { "<leader>S", function() require("spectre").open() end, desc = "Search and Replace in files" },
        },
    },
    {
        "folke/trouble.nvim",
        lazy = true,
        cmd = { "TroubleToggle", "Trouble" },
        opts = { icons = false, use_diagnostic_signs = true },
        keys = {
            { "<leader>ds", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics (Trouble)" },
            { "<leader>dw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
            { "<leader>dl", "<cmd>TroubleToggle loclist<cr>",               desc = "Location List (Trouble)" },
            { "<leader>dq", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix List (Trouble)" },
            {
                "<leader>dn",
                function()
                    if require("trouble").is_open() then
                        require("trouble").previous({ skip_groups = true, jump = true })
                    else
                        local ok, err = pcall(vim.cmd.cprev)
                        if not ok then
                            vim.notify(err, vim.log.levels.ERROR)
                        end
                    end
                end,
                desc = "Previous trouble/quickfix item",
            },
            {
                "<leader>dp",
                function()
                    if require("trouble").is_open() then
                        require("trouble").next({ skip_groups = true, jump = true })
                    else
                        local ok, err = pcall(vim.cmd.cnext)
                        if not ok then
                            vim.notify(err, vim.log.levels.ERROR)
                        end
                    end
                end,
                desc = "Next trouble/quickfix item",
            },
        },
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        keys = {
            { "<leader>g", ":lua require('neogen').generate()<cr>", desc = "Generate Docstring" },
        }
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    {
        "Theprimeagen/harpoon",
        lazy = true,
        keys = {
            { "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "[H]arpoon: [M]enu" },
            { "<leader>ha", ":lua require('harpoon.mark').add_file()<cr>",        desc = "[H]arpoon: [A]dd File" },

            { "F",          ":lua require('harpoon.ui').nav_next()<cr>",          desc = "[H]arpoon: [N]ext" },
            { "B",          ":lua require('harpoon.ui').nav_prev()<cr>",          desc = "[H]arpoon: [P]rev" },
        }
    },
    {
        "mbbill/undotree",
        lazy = true,
        keys = {
            { "<leader>u", vim.cmd.UndotreeToggle, desc = "[U]ndotree" },
        }
    },
    {
        "NStefan002/visual-surround.nvim",
        event = "InsertEnter",
        config = true
    },
    {
        "akinsho/toggleterm.nvim",
        lazy = true,
        keys = {
            { "<leader>t", ":ToggleTerm<cr>", desc = "[T]erminal" },
        },
        opts = {}
    },
    {
        "theKnightsOfRohan/csvlens.nvim",
        keys = {
            { "<leader>c", ":Csvlens<cr>", desc = "[C]svlens" },
        },
        config = true,
        opts = {}
    },
    {
        "stevearc/oil.nvim",
        opts = {
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            skip_confirm_for_simple_edits = true,
            experimental_watch_for_changes = false,
            use_default_keymaps = true,
            view_options = {
                show_hidden = true,
                natural_order = true,
            },
        },
    },
}

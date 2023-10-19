local formatting = require("plugins.formatting")

return {
	{ "tpope/vim-fugitive" },
	{ "mhinz/vim-startify" },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("plugins.nvim-surround")
		end,
	},
	{
		dir = "~/Projects/nvim-gitflow",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugins.blankline")
		end,
	},
	{
		"terrortylor/nvim-comment",
		config = function()
			require("plugins.nvim-comment")
		end,
	},
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("gitsigns").setup({})
			require("scrollbar.handlers.gitsigns").setup({})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("plugins.nvim-ts-autotag")
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.nvim-autopairs")
		end,
	},
	{ "lewis6991/gitsigns.nvim" },
	{ "doums/darcula" },
	{ "folke/tokyonight.nvim" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lspconfig")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("plugins.nvim-tree")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("plugins.lspsaga")
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("plugins.nvim-treesitter")
		end,
	},
	{
		"williamboman/mason.nvim",
		run = ":MasonUpdate",
		config = function()
			require("mason").setup({})
		end,
	},
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("plugins.neotree")
	-- 	end,
	-- },
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"f3fora/cmp-spell",
			{
				"L3MON4D3/LuaSnip",
				config = function()
					require("plugins.luasnip")
				end,
			},
			"rafamadriz/friendly-snippets",
			"honza/vim-snippets",
		},
		config = function()
			require("plugins.nvim-cmp")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins.lualine")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugins.bufferline")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-project.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("plugins.telescope")
		end,
	},
	{
		"dawsers/telescope-file-history.nvim",
		config = function()
			require("file_history").setup({
				backup_dir = "~/.file-history-git",
				git_cmd = "git",
			})
		end,
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("plugins.trouble")
		end,
		requires = "nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup({})
		end,
	},
	{
		"rhysd/git-messenger.vim",
	},
	{
		"yardnsm/vim-import-cost",
		run = "npm install --production",
	},
	{
		"mattkubej/jest.nvim",
		config = function()
			require("nvim-jest").setup({
				jest_cmd = "yarn jest",
			})
		end,
	},
	{
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup({
				--Note how the `gitblame_` prefix is omitted in `setup`
				enabled = false,
			})
		end,
	},
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				-- api_key_cmd = "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",
			})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"tiagovla/scope.nvim",
		config = function()
			require("scope").setup({})
		end,
	},
	formatting,
	-- {
	-- 	"mfussenegger/nvim-lint",
	-- 	lazy = true,
	-- 	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	-- 	config = function()
	-- 		local lint = require("lint")

	-- 		lint.linters_by_ft = {
	-- 			javascript = { "eslint_d" },
	-- 			typescript = { "eslint_d" },
	-- 			javascriptreact = { "eslint_d" },
	-- 			typescriptreact = { "eslint_d" },
	-- 		}

	-- 		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

	-- 		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	-- 			group = lint_augroup,
	-- 			callback = function()
	-- 				lint.try_lint()
	-- 			end,
	-- 		})

	-- 		vim.keymap.set("n", "<leader>ll", function()
	-- 			lint.try_lint()
	-- 		end, { desc = "Trigger linting for current file" })
	-- 	end,
	-- },
}

require("lazy").setup({
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
		"jose-elias-alvarez/null-ls.nvim",
		event = "LspAttach",
		config = function()
			require("plugins.null-ls")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
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
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("plugins.neotree")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"f3fora/cmp-spell",
			"L3MON4D3/LuaSnip",
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
	--{
	--"folke/trouble.nvim",
	--requires = "nvim-tree/nvim-web-devicons",
	--},
})

require("neo-tree").setup({
	window = {
		width = 40,
	},
	source_selector = {
		winbar = true,
		statusline = true,
	},
	filesystem = {
		filtered_items = {
			visible = false, -- when true, they will just be displayed differently than normal items
			hide_dotfiles = false,
			hide_gitignored = true,
			hide_hidden = true, -- only works on Windows for hidden files/directories
			hide_by_name = {
				--"node_modules"
			},
			hide_by_pattern = { -- uses glob style patterns
				--"*.meta",
				--"*/src/*/tsconfig.json",
			},
			always_show = { -- remains visible even if other settings would normally hide it
				--".gitignored",
			},
			never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
				--".DS_Store",
				--"thumbs.db"
			},
			never_show_by_pattern = { -- uses glob style patterns
				--".null-ls_*",
			},
		},
		follow_current_file = true,
	},
})

-- vim.keymap.set("n", "<leader>e", ":Neotree float focus<CR>")
-- vim.keymap.set("n", "<leader>gs", ":Neotree git_status<CR>")
-- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
-- vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>")

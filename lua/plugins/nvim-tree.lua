require("nvim-tree").setup({
	view = {
		width = 40,
		float = {
			enable = false,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 30,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},
	renderer = {
		-- add_trailing = false,
		-- group_empty = false,
		-- full_name = false,
		-- root_folder_label = ":~:s?$?/..?",
		indent_width = 2,
		-- special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		-- symlink_destination = true,
		highlight_git = true,
		highlight_diagnostics = true,
		-- highlight_opened_files = "none",
		-- highlight_modified = "none",
		-- highlight_bookmarks = "none",
		-- highlight_clipboard = "name",
		indent_markers = {
			enable = true,
			-- inline_arrows = false,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
		icons = {
			-- 	web_devicons = {
			-- 		file = {
			-- 			enable = true,
			-- 			color = true,
			-- 		},
			-- 		folder = {
			-- 			enable = false,
			-- 			color = true,
			-- 		},
			-- 	},
			-- 	git_placement = "before",
			-- 	modified_placement = "after",
			-- 	diagnostics_placement = "signcolumn",
			-- 	bookmarks_placement = "signcolumn",
			-- 	padding = " ",
			-- 	symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
				modified = true,
				diagnostics = true,
				bookmarks = true,
			},
			-- 	glyphs = {
			-- 		default = "",
			-- 		symlink = "",
			-- 		bookmark = "󰆤",
			-- 		modified = "●",
			-- 		folder = {
			-- 			arrow_closed = "",
			-- 			arrow_open = "",
			-- 			default = "",
			-- 			open = "",
			-- 			empty = "",
			-- 			empty_open = "",
			-- 			symlink = "",
			-- 			symlink_open = "",
			-- 		},
			-- 		git = {
			-- 			unstaged = "✗",
			-- 			staged = "✓",
			-- 			unmerged = "",
			-- 			renamed = "➜",
			-- 			untracked = "★",
			-- 			deleted = "",
			-- 			ignored = "◌",
			-- 		},
			-- 	},
		},
	},
	update_focused_file = {
		enable = true,
		update_root = false,
		ignore_list = {},
	},
})

api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>e", api.tree.toggle)
vim.keymap.set("n", "<leader>o", api.tree.focus)

require("neo-tree").setup({
  window = {
    width = 30,
  },
  filesystem = {
    follow_current_file = true,
  }
})

vim.keymap.set("n", "<leader>t", ":NeoTreeFocusToggle<cr>", {})

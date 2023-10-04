local status, telescope = pcall(require, "telescope")
if not status then
  return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end
local trouble = require("trouble.providers.telescope")

local fb_actions = telescope.extensions.file_browser.actions
telescope.setup({
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
          -- ['<leader>ff'] = '<leader>ff'
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd("startinsert")
          end,
        },
      },
      hidden = { file_browser = true, folder_browser = true },
    },
  },
})

telescope.load_extension("file_browser")
telescope.load_extension("project")

vim.keymap.set("n", "<leader>fb", function()
  telescope.extensions.file_browser.file_browser({
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 },
  })
end)

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files({ hidden = true })
end, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fp", function()
  telescope.extensions.project.project({})
end, {})
vim.keymap.set("n", "<leader>fa", function()
  builtin.lsp_code_actions()
end, {})

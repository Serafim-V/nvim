local path = vim.loop.cwd()
print(path)
local project_name = string.match(path, "/([%w-]+)$")

function Get_tree_title()
  if project_name then
    return "Project: [" .. string.upper(project_name) .. "]"
  else
    return "File Exploer"
  end
end

require("bufferline").setup({
  options = {
    -- mode = "tabs",
    offsets = {
      {
        filetype = "NvimTree",
        text = Get_tree_title(),
        highlight = "Directory",
        -- separator = true, -- use a "true" to enable the default, or set your own character
        text_align = "left", --| "center" | "right"
      },
    },
  },
})

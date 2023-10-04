local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.lua_format,
		-- null_ls.builtins.diagnostics.eslint_d.with({
		-- 	diagnostics_format = "(#{s}) [#{c}] #{m}",
		-- }),
		null_ls.builtins.diagnostics.eslint.with({
			diagnostics_format = "(#{s}) [#{c}] #{m}",
		}),
		-- null_ls.builtins.code_actions.eslint_d,
		null_ls.builtins.formatting.eslint.with({
			args = { "--fix", "--config", ".eslintrc" },
			prefer_local = "node_modules/.bin",
		}),
		-- null_ls.builtins.formatting.prettierd,
		-- null_ls.builtins.formatting.prettier,
		-- null_ls.builtins.code_actions.gitsigns,
		-- null_ls.builtins.code_actions.refactoring,
		-- null_ls.builtins.completion.luasnip,
	},
	on_attach = function(client, bufnr)
		print(bufnr)
		-- if client.supports_method("textDocument/formatting") then
		vim.keymap.set("n", "<Leader>lf", function()
			print(bufnr)
			-- vim.lsp.buf.format({ bufnr = bufnr })
			vim.lsp.buf.format({ bufnr = bufnr, async = async })
		end, { buffer = bufnr, desc = "[lsp] format" })

		-- format on save
		-- vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
		vim.api.nvim_create_autocmd(event, {
			buffer = bufnr,
			group = group,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr, async = async })
			end,
			desc = "[lsp] format on save",
		})
		-- end
	end,
})

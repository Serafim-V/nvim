local ls = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = { "../snippets" } })
require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "../snippets" } })
ls.setup()

ls.add_snippets("all", {
	ls.snippet("fn", {
		ls.text_node("imsdfsdfsdf"),
	}),
})

-- ls.filetype_extend("aZZll", { "_" })

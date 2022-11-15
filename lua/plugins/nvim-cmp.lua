-- Set up nvim-cmp.
local cmp = require 'cmp'
local lspkind = require('lspkind')

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
	}),
	formatting = {
		format = require("lspkind").cmp_format({
			with_text = true,
			menu = ({
				buffer = "",
				nvim_lsp = "[Lsp]",
				--nvim_lsp_signature_help = "Sig",
				vsnip = "VSNIP",
				nvim_lua = "[Lua]",
			})
		}),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'vsnip' },
		{ name = 'buffer' },
	})

})

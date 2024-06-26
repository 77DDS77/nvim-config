return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_snipmate").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
	-- {
	--   "hrsh7th/nvim-cmp",
	--   dependencies = {
	--     "luckasRanarison/tailwind-tools.nvim",
	--     "onsails/lspkind-nvim",
	--     "L3MON4D3/LuaSnip", -- Assicurati di avere LuaSnip come dipendenza
	--     "saadparwaiz1/cmp_luasnip", -- Assicurati di avere cmp_luasnip come dipendenza
	--   },
	--   config = function()
	--     local cmp = require("cmp")
	--     local lspkind = require("lspkind")
	--     local tailwind_tools = require("tailwind-tools.cmp")
	--
	--     -- Carica gli snippet da snipmate
	--     require("luasnip.loaders.from_snipmate").lazy_load()
	--
	--     -- Configura nvim-cmp
	--     cmp.setup({
	--       snippet = {
	--         expand = function(args)
	--           require("luasnip").lsp_expand(args.body)
	--         end,
	--       },
	--       window = {
	--         completion = cmp.config.window.bordered(),
	--         documentation = cmp.config.window.bordered(),
	--       },
	--       mapping = cmp.mapping.preset.insert({
	--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
	--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
	--         ["<C-Space>"] = cmp.mapping.complete(),
	--         ["<C-e>"] = cmp.mapping.abort(),
	--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
	--       }),
	--       sources = cmp.config.sources({
	--         { name = "nvim_lsp" },
	--         { name = "luasnip" }, -- For luasnip users.
	--       }, {
	--         { name = "buffer" },
	--       }),
	--       formatting = {
	--         format = lspkind.cmp_format({
	--           before = tailwind_tools.lspkind_format
	--         }),
	--       },
	--     })
	--   end,
	-- }
}

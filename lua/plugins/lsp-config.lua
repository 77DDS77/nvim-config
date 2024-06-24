return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			-- angular test
      -- continua qua https://www.reddit.com/r/neovim/comments/qtu5wa/cant_get_angular_language_server_work/
			local project_library_path = "/Users/D.DalSanto/AppData/Roaming/nvm/v20.13.0/node_modules"

			local cmd = {
				"node",
				"/Users/D.DalSanto/AppData/Roaming/nvm/v20.13.0/node_modules/@angular/language-server",
				"--stdio",
				"--tsProbeLocations",
				project_library_path,
				"--ngProbeLocations",
				project_library_path,
			}

			lspconfig.angularls.setup({
				on_new_config = function(new_config, _new_root_dir)
					new_config.cmd = cmd
				end,
			})

			-- lspconfig.angularls.setup({
			-- 	capabilities = capabilities,
			-- })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

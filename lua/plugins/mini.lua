return {
	{
		-- mini move, per muovere blocchi di codice con Alt + hjkl
		"echasnovski/mini.move",
		version = "*",
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		-- mini indent line
		"nvimdev/indentmini.nvim",
		config = function()
			require("indentmini").setup() -- use default config
			vim.cmd.highlight("IndentLine guifg=#363c51")
			vim.cmd.highlight("IndentLineCurrent guifg=#25747d")
		end,
	},
}

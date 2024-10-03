return {
	{
		-- mini move, per muovere blocchi di codice con Alt + hjkl
		"echasnovski/mini.move",
		version = "*",
		config = function()
			require("mini.move").setup()
		end,
	},
    -- disattivato perche uso hl-chunks
	-- {
	-- 	-- mini indent line
	-- 	"nvimdev/indentmini.nvim",
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("indentmini").setup() -- use default config
	-- 		-- Imposta i colori delle indent line dopo che Neovim ha caricato l'interfaccia utente
	-- 		vim.api.nvim_create_autocmd("UIEnter", {
	-- 			callback = function()
	-- 				vim.cmd.highlight("IndentLine guifg=#363c51")
	-- 				vim.cmd.highlight("IndentLineCurrent guifg=#25747d")
	-- 			end,
	-- 		})
	-- 	end,
	-- },
}

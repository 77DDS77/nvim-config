return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			--			autoinstall = true,
			ensure_installed = { "javascript", "c", "lua", "vim", "vimdoc", "query", "angular" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

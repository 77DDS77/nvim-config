vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.api.nvim_set_option("clipboard", "unnamed")

-- diagnostic updates while writing
vim.diagnostic.config({
    update_in_insert = true,
})

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS the search contains capitals letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show which line your cursor is on (da provare)
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- disable word wrap
vim.opt.wrap = false

vim.opt.termguicolors = true

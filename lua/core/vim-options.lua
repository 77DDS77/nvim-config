-- realtive number / use "number" if you want the normal use case
vim.wo.relativenumber = true

-- set the leader key to <Space>
vim.g.mapleader = " "

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- " Always use spaces insted of tabs
vim.opt.expandtab = true

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = "unnamedplus"

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
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 5

-- disable word wrap
vim.opt.wrap = false

vim.opt.termguicolors = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

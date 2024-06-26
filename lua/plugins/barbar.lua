return {
    -- new buffer tab manager
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    config = function()
        require("barbar").setup({
            -- your configuration options here
            icons = {
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = { enabled = true, icon = " " },
                    [vim.diagnostic.severity.WARN] = { enabled = false },
                    [vim.diagnostic.severity.INFO] = { enabled = false },
                    [vim.diagnostic.severity.HINT] = { enabled = true },
                },
                gitsigns = {
                    added = { enabled = true, icon = "+" },
                    changed = { enabled = true, icon = "~" },
                    deleted = { enabled = true, icon = "-" },
                },
            },
        })

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        -- Move to previous/next
        map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
        map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
        -- Re-order to previous/next
        map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
        map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
        -- Goto buffer in position...
        map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
        map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
        map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
        map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
        map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
        map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
        map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
        map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
        map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
        map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
        -- Pin/unpin buffer
        map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
        -- Close buffer
        map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
        -- Magic buffer-picking mode
        map("n", "<CA-p>", "<Cmd>BufferPick<CR>", opts)
        -- Sort automatically by...
        map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
        map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
        map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
        map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
        map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

        -- Clear background for diagnostic icons
        vim.api.nvim_set_hl(0, "BufferCurrentERROR", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentWARN", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentINFO", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentHINT", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentCHANGED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentDELETED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentADDED", { bg = "none" })

        vim.api.nvim_set_hl(0, "BufferVisibleERROR", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleWARN", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleINFO", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleHINT", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleCHANGED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleDELETED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferVisibleADDED", { bg = "red" })

        vim.api.nvim_set_hl(0, "BufferInactiveERROR", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveWARN", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveINFO", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveHINT", { bg = "none" })
    end,
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
}

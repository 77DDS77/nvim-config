return {
  "rebelot/kanagawa.nvim",
  config = function()
    vim.cmd.colorscheme("kanagawa-wave")
    -- vim.cmd.colorscheme("kanagawa-lotus") --light-theme
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true })
  end,
}

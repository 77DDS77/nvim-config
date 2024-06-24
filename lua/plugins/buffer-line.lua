return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    -- require("bufferline").setup()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " " or (e == "warning" and " " or "")
            s = s .. n .. sym
          end
          return s
        end,
        -- cicla tra i buffer aperti
        vim.keymap.set("n", "<leader>bn", ":bn<CR>", {}),
        vim.keymap.set("n", "<leader>bp", ":bp<CR>", {}),
        vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {}),
      },
    })
  end,
}

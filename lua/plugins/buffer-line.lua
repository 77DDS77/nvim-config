return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    -- TDUOR MAGIC SHOW
    local bufferline = require("bufferline")

    local updateBufferNumber = function(skipBuffer)
      local buffers = vim.api.nvim_list_bufs()
      local keysBinded = 1
      skipBuffer = skipBuffer or -1
      for _, buffer in ipairs(buffers) do
        if vim.fn.buflisted(buffer) == 1 and keysBinded <= 9 and buffer ~= skipBuffer then
          local bufname = vim.api.nvim_buf_get_name(buffer)
          local filename = vim.fn.fnamemodify(bufname, ":t")
          vim.keymap.set(
            "n",
            "<leader>b" .. keysBinded,
            ":lua require'bufferline'.go_to(" .. keysBinded .. ")<CR>",
            { desc = filename }
          )
          keysBinded = keysBinded + 1
        end
      end
    end

    vim.api.nvim_create_autocmd("bufreadpost", {
      callback = function()
        updateBufferNumber()
      end,
    })

    vim.api.nvim_create_autocmd("bufdelete", {
      callback = function()
        local bufnr = vim.fn.bufnr()
        if vim.fn.buflisted(bufnr) == 1 then
          local buff_number = #vim.fn.getbufinfo({ buflisted = 1 })
          if buff_number <= 9 then
            vim.keymap.set("n", "<leader>b" .. buff_number, function()
            end, { desc = "--------" })
          end
          updateBufferNumber(bufnr)
        end
      end,
    })

    updateBufferNumber()
    --
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

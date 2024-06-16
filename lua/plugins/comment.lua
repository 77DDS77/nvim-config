--NORMAL MODE--
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

--VISUAL MODE
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment

-- TODO COMMENTS HIGLIGHT
-- TODO: asd

return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    config = function()
      require("Comment").setup()
    end,
  },
  {
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      config = function ()
        require("todo-comments.").setup()
      end
    },
  },
}

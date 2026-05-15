return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  event = "BufReadPost",
  opts = {
    provider_selector = function(_, filetype)
      if filetype == "grug-far" then
        return ""
      end

      return { "treesitter", "indent" }
    end,
  },
  init = function()
    vim.o.foldcolumn = "1"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
  end,
  keys = {
    { "zR", function() require("ufo").openAllFolds() end,         desc = "Open All Folds" },
    { "zM", function() require("ufo").closeAllFolds() end,        desc = "Close All Folds" },
    { "zr", function() require("ufo").openFoldsExceptKinds() end, desc = "Open Folds Except Kinds" },
    { "zm", function() require("ufo").closeFoldsWith() end,       desc = "Close Folds With" },
    {
      "K",
      function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if not winid then vim.lsp.buf.hover() end
      end,
      desc = "Peek Fold / Hover"
    },
  },
}

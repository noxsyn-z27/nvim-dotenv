-- nvim-ufo: Treesitter / インデントを利用した高機能コード折りたたみプラグイン。
-- カスタマイズ:
--   - provider_selector: Treesitter優先、フォールバックにインデント (grug-farバッファは折りたたみ無効)。
--   - foldlevel=99: デフォルトですべて展開した状態で起動。
--   - `zR` / `zM`: 全展開 / 全折りたたみ。
--   - `zr` / `zm`: 指定種別以外を展開 / 指定レベルで折りたたみ。
--   - `K`: 折りたたみ内容をプレビュー (折りたたみがなければLSPホバー)。
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

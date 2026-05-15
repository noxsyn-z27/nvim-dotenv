-- which-key.nvim: キー入力の途中でポップアップを表示し、続くキーバインドの候補をガイドするプラグイン。
-- カスタマイズ:
--   - preset=modern: モダンなスタイルのポップアップUI。
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern"
    },
  },
}

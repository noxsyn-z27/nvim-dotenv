-- marks.nvim: Vimのマーク (`m` コマンドで設定) をサインカラムに可視化するプラグイン。
-- カスタマイズ:
--   - default_mappings=true: デフォルトのマークナビゲーションキーを使用。
--   - refresh_interval=250ms: マーク表示の更新間隔。
--   - sign_style="shorten": サインをコンパクトに表示。
return {
  "chentoast/marks.nvim",
  event = "VeryLazy",
  opts = {
    default_mappings = true,
    signs = true,
    sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
    refresh_interval = 250,
    sign_style = "shorten"
  },
}

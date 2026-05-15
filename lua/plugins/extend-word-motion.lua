-- extend_word_motion.nvim: `w`/`b`/`e` などのワードモーションを日本語対応に拡張するプラグイン。
-- tinysegmenter.nvim に依存し、日本語テキストを適切な単位で分割して移動できる。
-- カスタマイズ: デフォルト設定のまま使用。
return {
  "s-show/extend_word_motion.nvim",
  dependencies = "sirasagi62/tinysegmenter.nvim",
  opts = {},
}
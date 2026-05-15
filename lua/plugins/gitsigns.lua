-- gitsigns.nvim: Gitの差分 (追加・変更・削除) をサインカラムにリアルタイム表示するプラグイン。
-- カスタマイズ: デフォルト設定のまま使用。バッファ読み込み時に遅延ロード。
return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
}

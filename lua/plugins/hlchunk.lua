-- hlchunk.nvim: インデントガイドとコードチャンクのハイライトを表示するプラグイン。
-- カスタマイズ:
--   - chunk=true: 現在のコードブロック (関数・ifブロック等) を括弧でハイライト。
--   - indent=true: インデントガイドを表示。
--   - line_num=true: チャンク範囲の行番号をハイライト。
--   - blank=false: 空白ハイライトは無効。
return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    chunk = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    line_num = {
      enable = true,
    },
    blank = {
      enable = false
    },
  }
}

-- lualine.nvim: 高機能なステータスラインプラグイン。
-- カスタマイズ:
--   - theme=auto: カラースキームに自動追従。
--   - セパレーターを無効化してシンプルな見た目に。
--   - 左: モード / ブランチ・差分 / フルパスファイル名。
--   - 右: エンコーディング・改行形式・ファイルタイプ / 進捗 / 行・列。
--   - 非アクティブウィンドウはファイル名と位置のみ表示。
return {
  "nvim-lualine/lualine.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      theme = "auto",
      section_separators = "",
      component_separators = "",
      icon_enabled = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_c = { { "filename", path = 2 } },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { { "filename", path = 2 } },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}

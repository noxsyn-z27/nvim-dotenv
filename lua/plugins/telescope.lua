-- telescope.nvim: ファジーファインダープラグイン。ファイル・バッファ・grep等を高速に検索・選択できる。
-- カスタマイズ:
--   - layout: 横分割 (幅95%・高85%、プレビュー40%) で広めに表示。
--   - path_display=smart: 重複部分を省略したスマートなパス表示。
--   - `<Esc>` (Insert/Normal) および `q` (Normal) でウィンドウを閉じる。
return { {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          width = 0.95,
          height = 0.85,
          preview_width = 0.4
        }
      },
      path_display = { "smart" },
      mappings = {
        i = {
          ["<Esc>"] = function(...)
            require("telescope.actions").close(...)
          end
        },
        n = {
          ["q"] = function(...)
            require("telescope.actions").close(...)
          end,
          ["<Esc>"] = function(...)
            require("telescope.actions").close(...)
          end
        }
      }
    }
  }
} }

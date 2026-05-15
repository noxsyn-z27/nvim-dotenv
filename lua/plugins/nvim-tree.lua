-- nvim-tree.lua: サイドバー形式のファイルツリープラグイン。
-- カスタマイズ:
--   - `<leader>w`: ツリーのトグル (NvimTree表示中は閉じる、それ以外は現在ファイルを表示してフォーカス)。
--   - sync_root_with_cwd=true: カレントディレクトリに追従してルートを更新。
--   - git_ignored=false: .gitignore対象ファイルも表示。
--   - update_focused_file=true: 編集中ファイルに合わせてツリーをハイライト・ルート更新。
--   - `<CR>`: ファイルを開く / ディレクトリを展開。
--   - `[` / `]`: ツリーウィンドウ幅を10列単位で縮小 / 拡大。
--   - 背景色を黒 (#000000) に設定。
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>w",
      function()
        local api = require("nvim-tree.api")
        local ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })

        if ft == "NvimTree" then
          api.tree.close()
        else
          api.tree.find_file({ open = true, focus = true })
        end
      end,
      desc = "Toggle/Focus NvimTree (find current file)"
    }
  },
  config = function()
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      filters = {
        git_ignored = false,
      },
      renderer = {
        group_empty = true,
        symlink_destination = true,
      },
      update_focused_file = {
        enable = true,
        update_root = {
          enable = true,
        }
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        api.config.mappings.default_on_attach(bufnr)

        local function smart_enter()
          api.node.open.edit()
        end

        local function resize_window(direction)
          return function()
            local step = (direction == "-" and -10 or 10)
            local win = vim.api.nvim_get_current_win()
            local win_width = vim.api.nvim_win_get_width(win)
            vim.api.nvim_win_set_width(win, win_width + step)
          end
        end

        vim.keymap.set("n", "<cr>", smart_enter, { buffer = bufnr, desc = "Smart Enter: Open dir or open file in tab" })
        vim.keymap.set("n", "[", resize_window("-"), { buffer = bufnr, desc = "Narrow NvimTree window" })
        vim.keymap.set("n", "]", resize_window("+"), { buffer = bufnr, desc = "Widen NvimTree window" })

        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#000000" })
      end
    })
  end
}

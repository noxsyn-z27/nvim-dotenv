# nvim-dotenv

個人用 Neovim 設定。[lazy.nvim](https://github.com/folke/lazy.nvim) でプラグインを管理しています。

## 動作要件

| 項目 | バージョン |
|---|---|
| Neovim | >= 0.9.0 (動作確認: v0.12.2) |

## ディレクトリ構成

```
~/.config/nvim/
├── init.lua                # エントリーポイント
└── lua/
    ├── config/
    │   ├── lazy.lua        # lazy.nvim のブートストラップ・設定
    │   ├── options.lua     # 基本オプション
    │   ├── keymaps.lua     # キーマッピング
    │   └── utils.lua       # ユーティリティ関数
    └── plugins/            # プラグイン設定 (1ファイル1プラグイン)
```

## 主なプラグイン

| プラグイン | 役割 |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | プラグインマネージャー |
| [vscode.nvim](https://github.com/Mofiqul/vscode.nvim) | カラースキーム |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | ステータスライン |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | バッファタブ |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | ファイルツリー |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | ファジーファインダー |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | シンタックスハイライト |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git 差分表示 |
| [auto-save.nvim](https://github.com/okuuva/auto-save.nvim) | 自動保存 |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | キーバインドヒント |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | スタート画面 |
| [marks.nvim](https://github.com/chentoast/marks.nvim) | マーク可視化 |
| [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) | 折りたたみ強化 |
| [hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) | インデントガイド |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown レンダリング |
| [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) | ファイルマネージャー統合 |
| [any-jump.vim](https://github.com/pechorin/any-jump.vim) | 定義ジャンプ |
| [extend_word_motion](https://github.com/s-show/extend_word_motion.nvim) | ワードモーション拡張 |

## キーマッピング (主要)

| キー | モード | 動作 |
|---|---|---|
| `jj` | Insert | Normal モードへ |
| `<Space>` | — | `<leader>` |
| `te` | Normal | 新しいタブを開く |
| `<Esc><Esc>` | Normal | 検索ハイライト消去 |
| `\` | Normal | バッファ全体置換 (`:%s///g`) |
| `>` / `<` | Normal/Visual | インデント増減 |
| `<CR>` | Normal | カーソル位置で改行 |
| `<BS>` | Normal | 前方向に文字削除 (行結合対応) |
| `<Del>` | Normal | 後方向に文字削除 (行結合対応) |

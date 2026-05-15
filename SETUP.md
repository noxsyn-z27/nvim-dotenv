# セットアップガイド

## 必要条件

| ツール | 用途 |
|---|---|
| Neovim >= 0.10 | 本体 |
| Git | lazy.nvim のインストール |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | any-jump.vim、Telescope のgrep検索 |
| [yazi](https://github.com/sxyazi/yazi) | yazi.nvim |
| Nerd Font | アイコン表示 (例: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)) |

### Ubuntu / Debian への ripgrep インストール

```bash
sudo apt-get install ripgrep
```

### yazi のインストール

```bash
# cargo を使う場合
cargo install yazi-fm yazi-cli
```

---

## インストール手順

```bash
# 既存の設定をバックアップ
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null

# リポジトリをクローン
git clone https://github.com/noxsyn-z27/nvim-dotenv.git ~/.config/nvim
```

Neovim を起動すると lazy.nvim が自動でインストールされ、全プラグインが導入されます。

```bash
nvim
```

初回起動後、Treesitter パーサーをインストールします。

```
:TSUpdate
```

---

## アップデート

```vim
:Lazy update
```

---

## ディレクトリ参照

プラグインデータは Neovim の標準データパスに保存されます。

| 用途 | パス |
|---|---|
| プラグイン本体 | `~/.local/share/nvim/lazy/` |
| Treesitter パーサー | `~/.local/share/nvim/lazy/nvim-treesitter/parser/` |
| 設定ファイル | `~/.config/nvim/` |

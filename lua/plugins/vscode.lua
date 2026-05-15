-- vscode.nvim: VS Code ライクなカラースキームプラグイン。
-- カスタマイズ:
--   - underline_links=true: リンクテキストに下線を表示。
--   - vscBack=#000000: 背景色を純黒に変更 (デフォルトのダークグレーから変更)。
return {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    require('vscode').setup({
      underline_links = true,
      color_overrides = {
        vscBack = "#000000"
      },
    })
    vim.cmd.colorscheme("vscode")
  end,
}

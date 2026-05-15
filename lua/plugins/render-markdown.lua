-- render-markdown.nvim: Markdownをバッファ内でリアルタイムにレンダリングするプラグイン。
-- カスタマイズ:
--   - anti_conceal=false: カーソル付近での非表示解除を無効にして常にレンダリング状態を維持。
--   - heading.icons: 見出しアイコンを空文字にして番号プレフィックスを非表示。
--   - 見出しレベル (H1〜H6) の背景色をカスタムカラーで設定。
return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
  opts = {
    anti_conceal = {
      enabled = false
    },
    heading = {
      icons = function(ctx)
        return ""
      end
    },
    -- heading = {
    --   icons = function(ctx)
    --     local parts = {}
    --     for i = 1, ctx.level do
    --       parts[i] = tostring(ctx.sections[i])
    --     end
    --     return table.concat(parts, ".") .. " "
    --   end,
    -- },
  },
  config = function(_, opts)
    require("render-markdown").setup(opts)

    vim.api.nvim_set_hl(0, "RenderMarkdownH1Bg", { bg = "#6b2020" })
    vim.api.nvim_set_hl(0, "RenderMarkdownH2Bg", { bg = "#1a4a6b" })
    vim.api.nvim_set_hl(0, "RenderMarkdownH3Bg", { bg = "#1a5c3a" })
    vim.api.nvim_set_hl(0, "RenderMarkdownH4Bg", { bg = "#4a2060" })
    vim.api.nvim_set_hl(0, "RenderMarkdownH5Bg", { bg = "#6b4a10" })
    vim.api.nvim_set_hl(0, "RenderMarkdownH6Bg", { bg = "#1a5c5c" })
  end,
}

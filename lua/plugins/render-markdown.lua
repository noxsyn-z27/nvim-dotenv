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

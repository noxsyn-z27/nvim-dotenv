-- nvim-treesitter: 構文木を利用した高精度シンタックスハイライト・インデントプラグイン。
-- 事前に tree-sitter-cli のインストールが必要:
--   nvm でNode.js/npmをインストール後、npm install -g tree-sitter-cli
-- カスタマイズ:
--   - 対象言語: java / kotlin / lua / vim / vimdoc。
--   - FileType autocmd でバッファごとに Treesitter を起動し、インデントも Treesitter に委譲。
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local langs = { "java", "kotlin", "lua", "vim", "vimdoc" }
    require("nvim-treesitter.install").install(langs)

    local group = vim.api.nvim_create_augroup('MyTreesitterSetup', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      group = group,
      pattern = langs,
      callback = function(args)
        vim.treesitter.start(args.buf)
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}

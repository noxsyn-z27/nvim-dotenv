-- nvmを使ってnode.js, npmをインストールする
-- npmを使ってtree-sitter-cliをインストールする
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

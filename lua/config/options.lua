vim.opt.number = true

vim.api.nvim_set_hl(0, "LineNr", { fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })

vim.opt.clipboard = { "unnamed", "unnamedplus" }
vim.opt.showtabline = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.shada = "!,'10,<50,s10,h"
vim.opt.autoread = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.virtualedit = "onemore"
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.whichwrap:append("<,>,[,]")
vim.opt.hlsearch = true

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  keys = {
    { ",", "<cmd>BufferLineCyclePrev<cr>", desc = "前のバッファへ" },
    { ".", "<cmd>BufferLineCycleNext<cr>", desc = "次のバッファへ" },
    { "W", "<cmd>bp | bd #<cr>", desc = "現在のバッファを閉じる" },
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    require("bufferline").setup(opts)
  end,
  opts = {
    options = {
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
    },
  },
}

return {
  "chentoast/marks.nvim",
  event = "VeryLazy",
  opts = {
    default_mappings = true,
    signs = true,
    sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
    refresh_interval = 250,
    sign_style = "shorten"
  },
}

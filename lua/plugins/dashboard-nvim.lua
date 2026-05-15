return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  priority = 1000,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "hyper",
    config = {
      week_header = {
        enable = true
      },
      shortcut = { {
        desc = " Update",
        group = "@property",
        action = "Lazy update",
        key = "u"
      }, {
        icon = " ",
        icon_hl = "@variable",
        desc = "Files",
        group = "Label",
        action = "Telescope find_files",
        key = "f"
      }, {
        desc = " Quit",
        group = "DiagnosticError",
        action = "qa",
        key = "q"
      } }
    }
  },
  config = function()
    vim.api.nvim_create_user_command("DA", "Dashboard", {})
  end
}

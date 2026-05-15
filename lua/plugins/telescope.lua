return { {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          width = 0.95,
          height = 0.85,
          preview_width = 0.4
        }
      },
      path_display = { "smart" },
      mappings = {
        i = {
          ["<Esc>"] = function(...)
            require("telescope.actions").close(...)
          end
        },
        n = {
          ["q"] = function(...)
            require("telescope.actions").close(...)
          end,
          ["<Esc>"] = function(...)
            require("telescope.actions").close(...)
          end
        }
      }
    }
  }
} }

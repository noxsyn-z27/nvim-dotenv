local M = {}

local SKIP_FILETYPES = { NvimTree = true, ["grug-far"] = true }

function M.find_editor_win()
  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    local buf = vim.api.nvim_win_get_buf(win)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = buf })
    local filetype = vim.api.nvim_get_option_value("filetype", { buf = buf })

    if buftype == "" and not SKIP_FILETYPES[filetype] then
      return win
    end
  end
end

local map = vim.keymap.set

local function action_backspace()
  local col = vim.fn.col(".")
  if col == 1 then
    local row = vim.fn.line(".")
    if row > 1 then
      local prev_len = #vim.fn.getline(row - 1)
      vim.cmd("normal! kgJ")
      vim.fn.cursor(row - 1, prev_len + 1)
    end
  else
    vim.cmd("normal! X")
  end
end

local function action_delete()
  local col = vim.fn.col(".")
  local line = vim.fn.getline(".")
  if col > #line then
    if vim.fn.line(".") < vim.fn.line("$") then
      vim.cmd("normal! gJ")
    end
  else
    vim.cmd("normal! x")
  end
end


map("i", "jj", "<esc>", { silent = true })

map("n", "te", "<cmd>tabnew<cr>")
map("n", "<esc><esc>", "<cmd>nohlsearch<cr><esc>")

map("n", "\\", ":%s///g<left><left><left>")

map("v", ">", ">gv")
map("v", "<", "<gv")
map("n", ">", ">>")
map("n", "<", "<<")

map("n", "<cr>", "i<cr><esc>", { silent = true })

map("n", "<bs>", action_backspace, { silent = true })
map("n", "<del>", action_delete, { silent = true })

-- auto-save.nvim: バッファの変更を自動保存するプラグイン。
-- カスタマイズ:
--   - debounce_delay=5000: 最後の編集から5秒後に保存 (即時保存による過剰書き込みを防止)。
--   - 無名バッファや読み取り専用バッファはスキップ。
--   - 保存時に時刻付きの通知を表示。
return {
  "okuuva/auto-save.nvim",
  version = "^1.0.0",
  config = function()
    require("auto-save").setup {
      debounce_delay = 5000,
      condition = function(buf)
        local name = vim.api.nvim_buf_get_name(buf)
        if name == "" or vim.fn.getbufvar(buf, "&modifiable") == 0 then
          return false
        end

        return true
      end
    }
    local group = vim.api.nvim_create_augroup('autosave', {})

    vim.api.nvim_create_autocmd('User', {
      pattern = 'AutoSaveWritePost',
      group = group,
      callback = function(opts)
        if opts.data.saved_buffer ~= nil then
          local filename = vim.api.nvim_buf_get_name(opts.data.saved_buffer)
          vim.notify('AutoSave: saved ' .. filename .. ' at ' .. vim.fn.strftime('%H:%M:%S'), vim.log.levels.INFO)
        end
      end,
    })
  end
}

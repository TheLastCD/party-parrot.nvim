local function party_buffer()
  local width = math.floor(vim.o.columns * 0.265)
  local height = math.floor(vim.o.lines * 0.42)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)
  local buf = vim.api.nvim_create_buf(false, true)

  vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  })
  vim.cmd('terminal curl https://parrot.live')

  local buf = vim.api.nvim_get_current_buf()

  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', ':bd!<CR>', { nowait = true, noremap = true, silent = true })
end

vim.api.nvim_create_user_command("Party", party_buffer, {})



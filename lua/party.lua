local function party_buffer()
  vim.cmd('terminal curl https://parrot.live')

  local buf = vim.api.nvim_get_current_buf()

  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', ':bd!<CR>', { nowait = true, noremap = true, silent = true })
end

vim.api.nvim_create_user_command("Party", party_buffer, {})

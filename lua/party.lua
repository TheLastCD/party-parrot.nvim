local function party_buffer()
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_name(buf, "*party*")
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, {"🎉 It's party time! 🎉"})
  vim.api.nvim_set_current_buf(buf)
end

vim.api.nvim_create_user_command("Party", party_buffer, {})

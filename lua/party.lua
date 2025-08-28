local function party_buffer()
  -- Create a new scratch buffer (unlisted, scratch)
  local buf = vim.api.nvim_create_buf(false, true)
  -- Set buffer name
  vim.api.nvim_buf_set_name(buf, "*party*")
  -- Run curl command to parrot.live and capture output
  local output = vim.fn.systemlist("curl https://parrot.live")
  -- Set output in buffer lines
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, output)
  -- Open buffer in current window
  vim.api.nvim_set_current_buf(buf)
  -- Map 'q' to close this buffer
  vim.api.nvim_buf_set_keymap(buf, "n", "q", ":bd!<CR>", { nowait = true, noremap = true, silent = true })
end

vim.api.nvim_create_user_command("Party", party_buffer, {})

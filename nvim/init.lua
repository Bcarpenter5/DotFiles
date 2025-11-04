require("brandino")


-- vim.g.copilot_no_tab_map = false
-- mapc tabl
vim.cmd('map <Tab> <Nop>')
vim.cmd('imap <Tab> <Nop>')

-- mapc tabl
vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true
-- remove tab mapping for insert mode

vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true })


--[[ local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end ]]





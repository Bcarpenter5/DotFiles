
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>vi", vim.cmd.Vifm)



-- this is brandon's custom
vim.keymap.set("n", "<leader><F2>", ":lua WriteComments() <cr>")
-- now with shift
vim.keymap.set("n", "<leader><C-F2>", ":lua BlockComment() <cr>")

vim.keymap.set("n", "<leader><F3>",[[:w !python3 <cr>]])
--sftp remap
vim.keymap.set("n", "<leader><F4>",[[:w <cr> :SftpSelectServer thor<cr>:SftpSend<cr>]])
-- git svn remaps
vim.keymap.set("n", "<leader><F5>",[[:w <cr>:!git add -u <cr> :!git commit -m "update" <cr> :!git svn dcommit <cr> :!git svn rebase <cr>]])
vim.keymap.set("n", "<leader><F6>",[[:w !git svn rebase <cr>]])

vim.keymap.set("n", "<C-f>",[[:ZoomWinTabToggle<cr>]])

--drop <C-S> default
vim.keymap.set("n", "<C-s>",[[:wall <cr>]])
--  set cntl shift s to save 
vim.keymap.set("n", "<leader><C-s>",[[:mksession! Session.vim <cr>:wall <cr>]])
--  set cntl shift q to quit all
vim.keymap.set("n", "<C-Q>",[[:qall <cr>]])
-- set leader t to TabVifm
vim.keymap.set("n", "<leader>t", vim.cmd.TabVifm)
-- set leader v to VsplitVifm
vim.keymap.set("n", "<leader>v", vim.cmd.VsplitVifm)





vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

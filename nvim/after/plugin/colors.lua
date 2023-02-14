function ColorMyPencils(color)
 	color = color or "rose-pine"

	vim.cmd.colorscheme(color)



	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = "none", bg = "none"})
    vim.api.nvim_set_hl(0, "VertSplit", {fg = "none", bg = "none"})
    --make column lines transparent
    vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
    --make other buffers transparent
    vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})


end

ColorMyPencils()




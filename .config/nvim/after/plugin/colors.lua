function SetColor(color)
	color = color or 'tokyonight'
	vim.cmd.colorscheme(color)

    local groups = {
        'Normal', 'NormalNC', 'NormalFloat',
        'SignColumn', 'StatusLine'
    }
    for _, v in pairs(groups) do
        vim.api.nvim_set_hl(0, v, {bg = 'none'})
    end
end

SetColor()

function SetColor(color)
	color = color or 'tokyonight'
	vim.cmd.colorscheme(color)

    local nobg_groups = {
        'Normal', 'NormalNC', 'NormalFloat',
        'SignColumn', 'StatusLine'
    }
    for _, v in pairs(nobg_groups) do
        vim.api.nvim_set_hl(0, v, {bg = 'none'})
    end

    local bold_white_text = {
        "StatusLine", "StatusLineNC", "ModeMsg"
    }
    for _, v in pairs(bold_white_text) do
        vim.api.nvim_set_hl(0, v, {fg="#e5e9f0", bg="none", bold = true})
    end
end

SetColor()

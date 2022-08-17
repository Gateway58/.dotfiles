    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"
    vim.g.tokyonight_italic_comments = false
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_dark_sidebar = false
    vim.g.tokyonight_dark_float = true

    vim.cmd[[ colorscheme tokyonight ]]

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    --hl("ColorColumn", {
    --    ctermbg = 0,
    --    bg = "#555555",
    --})

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    --hl("LineNr", {
    --    fg = "#5eacd3"
    --})

    hl("netrwDir", {
        fg = "#5eacd3"
    })
    require("lualine").setup{}

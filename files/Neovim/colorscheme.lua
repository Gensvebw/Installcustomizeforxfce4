return {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- Enable true colors
        vim.opt.termguicolors = true
        
        -- Configure Nord options
        vim.g.nord_contrast = true
        vim.g.nord_borders = false
        vim.g.nord_disable_background = false
        vim.g.nord_italic = true
        vim.g.nord_bold = true
        
        -- Apply the theme
        vim.cmd("colorscheme nord")
    end
}

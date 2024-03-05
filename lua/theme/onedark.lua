-- onedark.lua

return {
    'navarasu/onedark.nvim',
    {
        "LazyVim/LazyVim",
        priority = 1000,
        config = function()
            require('onedark').setup {
                style = 'warmer'
            }
            require('onedark').load()
        end,
        opts = {
            colorscheme = "onedark",
        },
    }
}

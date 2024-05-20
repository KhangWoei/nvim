-- bufferline.lua

local bufferline = {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
}

function bufferline.config()
    require("bufferline").setup(
        {
            options =
            {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "NeoTree",
                        highlight = "Directory",
                        separator = true
                    }
                },
                diagnostics = "nvim_lsp",
            }
        })
end

return bufferline

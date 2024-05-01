-- bufferline.lua

local bufferline = {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
}

function bufferline.config()
    require("bufferline").setup()
end

return bufferline

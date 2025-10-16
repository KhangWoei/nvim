-- neoscroll

local neoscroll = {
    "karb94/neoscroll.nvim"
}

function neoscroll.config()
    require('neoscroll').setup({
        mappings = {
            ['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } },
            ['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }
        }
    })
end

return neoscroll

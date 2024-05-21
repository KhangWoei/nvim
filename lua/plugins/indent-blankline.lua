-- indent-blankline.lua
-- Add indentation guides even on blank lines

local indent_blankline = {
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl'
}

local highlight = {
    "CursorColumn",
    "Whitespace",
}

function indent_blankline.config()
    require("ibl").setup({
        indent = { highlight = highlight, char = "" },
        whitespace = {
            highlight = highlight,
            remove_blankline_trail = false,
        },
        scope = { enabled = false },
    })
end

return indent_blankline

-- treesitter.lua

return {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',


    -- See `:help nvim-treesitter`
    -- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
    config = vim.defer_fn(function()
        require('nvim-treesitter.configs').setup {
            -- Add languages to be installed here that you want installed for treesitter
            ensure_installed = {
                'c_sharp',
                'go',
                'lua',
                'python',
                'tsx',
                'javascript',
                'typescript',
                'vimdoc',
                'vim',
                'bash' },

            auto_install = false,

            highlight = { enable = true },
            indent = { enable = true },
        }
    end, 0)
}

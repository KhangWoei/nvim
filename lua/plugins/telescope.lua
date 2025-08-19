-- telescope.lua
-- Fuzzy Finder (files, lsp, etc)
local telescope = {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- Fuzzy Finder Algorithm which requires local dependencies to be built.
        -- Only load if `make` is available. Make sure you have the system
        -- requirements installed.
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            -- NOTE: If you are having trouble with this installation,
            --       refer to the README for telescope-fzf-native for more instructions.
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
    },
}

function telescope.config()
    require('telescope').setup {
        defaults = {
            mappings = {
                i = {
                    ['<C-u>'] = false,
                    ['<C-d>'] = false,
                },
            },
        },
    }

    pcall(require('telescope').load_extension, 'fzf')
end

local function search_current_buffer()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    })
end

function telescope.keys()
    return {
        { "<leader>srf", ":Telescope oldfiles <CR>",    desc = "[S]earch [R]ecent [F]iles" },
        { "<leader>sb",  ":Telescope buffers <CR>",     desc = "[S]earch [B]uffers" },
        { "<leader>scb", search_current_buffer,         desc = "[S]earch [C]urrent [B]uffer" },
        { "<leader>sd",  ":Telescope diagnostics <CR>", desc = "[S]earch [D]iagnostics" },
        { "<leader>sg",  ":Telescope live_grep <CR>",   desc = "[S]earch by [G]rep" },
        { "<leader>sgf", ":Telescope git_files <CR>",   desc = "[S]earch [G]it [F]iles" },
        { "<leader>sf",  ":Telescope find_files <CR>",  desc = "[S]earch [F]iles" },
        { "<leader>sh",  ":Telescope help_tags <CR>",   desc = "[S]earch [H]elp" },
        { "<leader>skm", ":Telescope keymaps <CR>",     desc = "[S]earch [K]ey [M]aps" }
    }
end

return telescope

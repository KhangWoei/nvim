-- neotree.lua
local neotree = {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    }
}

function neotree.config()
    require("neo-tree").setup(
        {
            source_selector = {
                winbar = true,
                statusline = false,
                show_scrolled_off_parent_node = false,
                sources = {
                    {
                        source = "filesystem",
                        display_name = " 󰉓 Files "
                    },
                    {
                        source = "buffers",
                        display_name = " 󰈚 Buffers "
                    },
                    {
                        source = "git_status",
                        display_name = " 󰊢 Git "
                    }
                },
                content_layout = "start", -- string
                tabs_layout = "equal", -- string
                truncation_character = "…", -- string
                tabs_min_width = nil, -- int | nil
                tabs_max_width = nil, -- int | nil
                padding = 0, -- int | { left: int, right: int }
                separator = { left = "▏", right = "▕" }, -- string | { left: string, right: string, override: string | nil }
                separator_active = nil, -- string | { left: string, right: string, override: string | nil } | nil
                show_separator_on_edge = false, -- boolean
                highlight_tab = "NeoTreeTabInactive", -- string
                highlight_tab_active = "NeoTreeTabActive", -- string
                highlight_background = "NeoTreeTabInactive", -- string
                highlight_separator = "NeoTreeTabSeparatorInactive", -- string
                highlight_separator_active = "NeoTreeTabSeparatorActive", -- string
            },
        }
    )
end

function neotree.keys()
    return {
        { "<leader>n",  ":Neotree toggle <CR>",          desc = "Toggle [N]eotree" },
        { "<leader>nf", ":Neotree show filesystem <CR>", desc = "[N]eotree [F]ilesystem" },
        { "<leader>nb", ":Neotree show buffers <CR>",    desc = "[N]eotree [B]uffers" },
        { "<leader>ng", ":Neotree show git_status <CR>", desc = "[N]eotree [G]it" }
    }
end

return neotree

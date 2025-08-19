-- bookmarks.lua
local bookmarks = {
    "LintaoAmons/bookmarks.nvim",

    tag = "3.2.0",
    dependencies = {
        { "stevearc/dressing.nvim" },
        { "kkharji/sqlite.lua" }
    }
}

function bookmarks.config()
    local opts = {}
    require("bookmarks").setup(opts)
end

function bookmarks.keys()
    return {
        { "<leader>bm",  ":BookmarksMark<CR>",     desc = "[B]ook[M]ark current line" },
        { "<leader>bmc", ":BookmarksCommands<CR>", desc = "[B]ook[M]ark [C]ommands" },
        { "<leader>bmg", ":BookmarksGoto<CR>",     desc = "[B]ook[M]ark [G]oto" },
        { "<leader>bml", ":BookmarksLists<CR>",    desc = "[B]ook[M]ark [L]ists" },
        { "<leader>sbm", ":BookmarksGrep<CR>",     desc = "[S]earch [B]ook[M]arked files" },
    }
end

return bookmarks

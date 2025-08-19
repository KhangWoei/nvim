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

return bookmarks

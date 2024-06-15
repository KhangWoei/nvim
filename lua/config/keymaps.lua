-- keymaps.lua
-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--[[ Telescope Keymaps ]]
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>srf', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>fb', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>km', require('telescope.builtin').keymaps, { desc = '[K]ey [M]aps' })

--[[ Neotree Keymaps ]]
vim.keymap.set('n', '<leader>n', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle [N]eotree' })
vim.keymap.set('n', '<leader>nf', '<Cmd> Neotree show filesystem<CR>', { desc = '[N]eotree [F]ilesystems' })
vim.keymap.set('n', '<leader>nb', '<Cmd> Neotree show buffers<CR>', { desc = '[N]eotree [B]uffers' })
vim.keymap.set('n', '<leader>ng', '<Cmd> Neotree show git_status<CR>', { desc = '[N]eotree [G]it Status' })

--[[ Undotree Keymaps ]]
vim.keymap.set('n', '<leader>u', '<Cmd>UndotreeToggle<CR>', { desc = 'Toggle [U]ndotree' })

--[[ Bookmarks Keymaps ]]
vim.keymap.set({ "n", "v" }, "<leader>bm", "<cmd>BookmarksMark<cr>",
    { desc = "[B]ook[M]ark" })
vim.keymap.set({ "n", "v" }, "<leader>bml", "<cmd>BookmarksGoto<cr>",
    { desc = "[B]ook[M]ark [L]ist" })
vim.keymap.set({ "n", "v" }, "<leader>bmc", "<cmd>BookmarksCommands<cr>",
    { desc = "[B]ook[M]ark [C]ommands" })

--[[ Navbuddy Keymaps ]]
vim.keymap.set({ "n", "v" }, "<leader>b", "<cmd>Navbuddy<cr>", { desc = "Nav[B]uddy (but really [B]readcrumbs" })

-- [[ Neoscroll Keymaps ]]
local neotree    = {}
neotree['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } }
neotree['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }
neotree['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '450' } }
neotree['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450' } }
neotree['<C-y>'] = { 'scroll', { '-0.10', 'false', '100' } }
neotree['<C-e>'] = { 'scroll', { '0.10', 'false', '100' } }

require('neoscroll.config').set_mappings(neotree)

-- [[ Nvim UFO ]]
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

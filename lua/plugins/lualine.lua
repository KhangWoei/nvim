-- lualine.lua
-- Add indentation guides even on blank lines

return {
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = true,
			theme = 'powerline_dark',
			component_separators = '|',
			section_separators = '',
		},
	},
}

-- local pickers = require("telescope.pickers")
-- local finders = require("telescope.finders")
-- local previewers = require("telescope.previewers")
-- local action_state = require("telescope.actions.state")
-- local conf = require("telescope.config").values
-- local actions = require("telescope.actions")
--require("telescope").load_extension "file_browser"

require("telescope").setup({
	defaults = {
        file_ignore_patterns = {"node_modules", },
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = " >",
		color_devicons = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		mappings = {
            -- --
		},
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
            },
	},
})
--local M = {}

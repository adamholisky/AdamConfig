return {
  'DrKJeff16/project.nvim',
  dependencies = { -- OPTIONAL. Choose any of the following
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
    'wsdjeg/picker.nvim',
    'folke/snacks.nvim',
    'ibhagwan/fzf-lua',
  },
  opts = {},
  config = function()
	  require('project').setup({
		  manual_mode = false,
		  detection_method = { 'lsp', 'pattern' },
		  patterns = { '.nvim.lua', '.git', 'Makefile', 'package.json' },
	  })

	  require('telescope').load_extension('projects')
  end,
}

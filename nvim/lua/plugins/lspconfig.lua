return {
  'neovim/nvim-lspconfig',
  config = function()
	vim.lsp.config('clangd', {
      cmd = { 'clangd', '--background-index' },
      filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
      root_markers = { 'CMakeLists.txt', '.git', 'compile_commands.json' },
    })

	vim.lsp.enable('clangd')
  end,
}

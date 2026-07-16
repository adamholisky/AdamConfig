return {
	'mason-org/mason.nvim',
	'mason-org/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
			ensure_installed = {
				'clangd',
			},
			automatic_installation = true,
			handlers = {
				function(server_name)
					vim.lsp.enable(server_name)
				end,
			}
		})
	end,
	opts = {}
}

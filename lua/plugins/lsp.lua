return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			'bashls', 'clangd', 'html', 'intelephense', 'jsonls',
			'lua_ls', 'pyright', 'rust_analyzer', 'ts_ls', 'jdtls'
		})
	end
}

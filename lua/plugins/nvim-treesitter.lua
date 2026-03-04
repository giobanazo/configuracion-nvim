return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,        -- NO usar carga diferida
	build = ':TSUpdate', -- Actualiza los parsers al instalar/actualizar

	config = function()
		-- Configuración del plugin
		require('nvim-treesitter').setup {
			install_dir = vim.fn.stdpath('data') .. '/site',
		}

		-- Parsers a instalar (agrega o quita los que necesites)
		require('nvim-treesitter').install({
			'lua', 'python', 'javascript', 'rust', 'c', 
			'cpp', 'html', 'css', 'json', 'bash', 'php'
		})

		-- Habilitar funciones por tipo de archivo
		vim.api.nvim_create_autocmd('FileType', {
			pattern = {
				'lua', 'python', 'javascript','rust', 'c', 
				'cpp', 'html', 'css', 'json', 'bash', 'php'
			},
			callback = function()
				-- Resaltado de sintaxis
				vim.treesitter.start()

				-- Sangría experimental
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}

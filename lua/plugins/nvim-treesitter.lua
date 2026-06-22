return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {
      install_dir = vim.fn.stdpath('data') .. '/site',
    }

    -- Se instalan automáticamente al abrir nvim
    require('nvim-treesitter').install({
      'lua', 'python', 'javascript', 'typescript', 'rust',
			'c', 'cpp', 'html', 'css', 'json', 'bash', 'php', 'java',
      'regex', 'vim', 'markdown', 'markdown_inline',
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'lua', 'python', 'javascript', 'typescript', 'rust',
				'c', 'cpp', 'html', 'css', 'json', 'bash', 'php',
				'java', 'regex', 'vim', 'markdown',
      },
      callback = function()
        local ok = pcall(vim.treesitter.start)
        if ok then
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}

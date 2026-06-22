return {
  -- Mason base
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- LSP servers — se instalan automáticamente
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "bashls",        -- Bash
        "clangd",        -- C++
        "html",          -- HTML
        "intelephense",  -- PHP
        "jsonls",        -- JSON
        "lua_ls",        -- Lua
        "pyright",       -- Python
        "rust_analyzer", -- Rust
        "ts_ls",         -- TypeScript / JavaScript
        "jdtls",         -- Java
      },
      automatic_enable = true,
    },
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },

  -- Formatters y linters — se instalan automáticamente
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier",      -- HTML, JSON, TypeScript, JavaScript
        "shfmt",         -- Bash formatter
        "shellcheck",    -- Bash linter
        "stylua",        -- Lua formatter
        "ruff",          -- Python formatter + linter
        "php-cs-fixer",  -- PHP formatter
        "eslint_d",      -- TypeScript/JavaScript linter
        "clang-format",  -- C++ formatter
      },
      auto_update = true,
      run_on_start = true,
    },
    dependencies = {
      "mason-org/mason.nvim",
    },
  },
}

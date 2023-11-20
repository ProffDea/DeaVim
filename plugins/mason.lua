return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "jsonls",
        "pyright",
        "bashls",
        "cssls",
        "dockerls",
        "eslint",
        "tsserver",
        "marksman",
        "prismals",
        "rust_analyzer",
        "sqlls",
        "taplo",
        "tailwindcss",
        "volar",
        "yamlls",
        "clangd",
        "htmx-lsp",
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
      })
    end,
  },
}

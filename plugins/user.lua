return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup({
        neovim_image_text = "The Banana Editor",
        main_image = "file",
      })
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({
        current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          delay = 300,
        },
        current_line_blame_formatter = '<author>, <author_time:%m/%d/%Y> - <summary>',
      })
    end,
  },
  { "ThePrimeagen/harpoon" },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    run = "pnpm i --frozen-lockfile",
  },
  {
    "simrat39/rust-tools.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" },
      },
    },
  }
}

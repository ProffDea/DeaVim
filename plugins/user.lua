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
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
  },
}

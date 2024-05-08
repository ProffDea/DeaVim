return {
  {
    "ProffDea/presence.nvim",
    event = { "BufEnter" },
    config = function()
      require("presence").setup({
        neovim_image_text = "The Banana Editor",
        main_image = "file",
      })
    end,
  },
}

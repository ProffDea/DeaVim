return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>S"] = { name = "+session" },
        ["<leader>t"] = { name = "+terminal" },
        ["<leader>h"] = { "<cmd>Dashboard<cr>", "Home" },
      },
    },
  },
}

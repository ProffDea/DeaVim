return {
  {
    "stevearc/oil.nvim",
    opts = {},
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
        },
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "<leader>o", "<cmd>Oil --float<cr>", desc = "Open file explorer" },
    },
  },
}

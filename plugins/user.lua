return {
  {
    "ProffDea/presence.nvim",
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
  {
    "neoclide/coc.nvim",
    branch = "release",
    run = "pnpm i --frozen-lockfile",
  },
}

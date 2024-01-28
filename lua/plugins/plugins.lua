return {
  { "folke/persistence.nvim",       enabled = false },

  { "iamcco/markdown-preview.nvim", enabled = false },

  { "lukas-reineke/headlines.nvim", enabled = false },

  { "folke/tokyonight.nvim",        enabled = false },

  { "nvimdev/dashboard-nvim",       enabled = false },

  { "echasnovski/mini.ai",          enabled = false },

  { "echasnovski/mini.indentscope", enabled = false },

  { "nvim-neo-tree/neo-tree.nvim",  enabled = false },

  { "tpope/vim-repeat",             enabled = false },

  { "echasnovski/mini.surround",    enabled = false },

  { "nvim-pack/nvim-spectre",       enabled = false },

  { "dstein64/vim-startuptime",     enabled = false },

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

  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    config = function()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
    cmd = {
      "PeekOpen",
      "PeekClose",
    },
  },

  {
    "Shatur/neovim-session-manager",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

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

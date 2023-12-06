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

  {
    "echasnovski/mini.move",
    keys = {
      { "<A-h>", mode = "n", desc = "Move line left" },
      { "<A-j>", mode = "n", desc = "Move line down" },
      { "<A-k>", mode = "n", desc = "Move line up" },
      { "<A-l>", mode = "n", desc = "Move line right" },
      { "<A-h>", mode = "v", desc = "Move selection left" },
      { "<A-j>", mode = "v", desc = "Move selection down" },
      { "<A-k>", mode = "v", desc = "Move selection up" },
      { "<A-l>", mode = "v", desc = "Move selection right" },
    },
    opts = {
      mappings = {
        left = "<A-h>",
        right = "<A-l>",
        down = "<A-j>",
        up = "<A-k>",
        line_left = "<A-h>",
        line_right = "<A-l>",
        line_down = "<A-j>",
        line_up = "<A-k>",
      },
    },
  },

  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    enabled = true,
    cmd = "Oil",
    keys = {
      {
        "<leader>O",
        function()
          require("oil").open()
        end,
        desc = "Open folder in Oil",
      },
    },
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
  },

  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } },
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
    keys = {
      { "<leader>Sl", "<cmd>SessionManager load_last_session<cr>", desc = "Load last session" },
      { "<leader>Ss", "<cmd>SessionManager save_current_session<cr>", desc = "Save this session" },
      { "<leader>Sd", "<cmd>SessionManager delete_session<cr>", desc = "Delete session" },
      { "<leader>Sf", "<cmd>SessionManager load_session<cr>", desc = "Search sessions" },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggleterm float" },
      { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Toggleterm horizontal split" },
      { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Toggleterm vertical split" },
    },
    config = true,
  },

  { "folke/persistence.nvim", enabled = false },

  { "iamcco/markdown-preview.nvim", enabled = false },

  { "lukas-reineke/headlines.nvim", enabled = false },

  { "folke/tokyonight.nvim", enabled = false },
}

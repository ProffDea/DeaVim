return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>s"] = {
          function()
            require("telescope.builtin").lsp_document_symbols({
              symbols = require("lazyvim.config").get_kind_filter(),
            })
          end,
          "Open symbol picker"
        },
        ["<leader>S"] = { name = "+session" },
      },
    },
  },

  {
    "Shatur/neovim-session-manager",
    keys = {
      { "<leader>Sl", "<cmd>SessionManager load_last_session<cr>",    desc = "Load last session" },
      { "<leader>Ss", "<cmd>SessionManager save_current_session<cr>", desc = "Save this session" },
      { "<leader>Sd", "<cmd>SessionManager delete_session<cr>",       desc = "Delete session" },
      { "<leader>Sf", "<cmd>SessionManager load_session<cr>",         desc = "Search sessions" },
    },
  },

  {
    "echasnovski/mini.bufremove",
    config = function()
      vim.api.nvim_create_user_command(
        "Bc",
        function()
          local bd = require("mini.bufremove").delete
          if vim.bo.modified then
            local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
            if choice == 1 then -- Yes
              vim.cmd.write()
              bd(0)
            elseif choice == 2 then -- No
              bd(0, true)
            end
          else
            bd(0)
          end
        end,
        {}
      )
    end,
    cmd = { "Bc" },
    keys = {
      { "<leader>bd", false },
      { "<leader>bD", false },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>/",       false },
      { "<leader>fb",      false },
      { "<leader>fc",      false },
      { "<leader>ff",      false },
      { "<leader>fF",      false },
      { "<leader>fr",      false },
      { "<leader>fR",      false },
      { "<leader><space>", false },
      { "<leader>,",       false },
      { "<leader>:",       false },
      { '<leader>s"',      false },
      { "<leader>sa",      false },
      { "<leader>sb",      false },
      { "<leader>sc",      false },
      { "<leader>sC",      false },
      { "<leader>sd",      false },
      { "<leader>sD",      false },
      { "<leader>sg",      false },
      { "<leader>sG",      false },
      { "<leader>sh",      false },
      { "<leader>sH",      false },
      { "<leader>sk",      false },
      { "<leader>sm",      false },
      { "<leader>sM",      false },
      { "<leader>so",      false },
      { "<leader>sR",      false },
      { "<leader>ss",      false },
      { "<leader>sS",      false },
      { "<leader>sw",      false },
      { "<leader>sW",      false },
      { "<leader>uC",      false },

      { "<leader>b",       "<cmd>Telescope buffers<cr>",     desc = "Open buffer picker" },
      { "<leader>d",       "<cmd>Telescope diagnostics<cr>", desc = "Open diagnostic picker" },
      { "<leader>f",       "<cmd>Telescope find_files<cr>",  desc = "Open file picker" },
      { "<leader>j",       "<cmd>Telescope jumplist<cr>",    desc = "Open jumplist picker" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      keys[#keys + 1] = { "<leader>ca", false }
      keys[#keys + 1] = { "<leader>cA", false }
      keys[#keys + 1] = { "<leader>cl", false }
      keys[#keys + 1] = { "<leader>cr", false }

      keys[#keys + 1] = { "<leader>r", vim.lsp.buf.rename, desc = "Rename symbol" }
    end,
  },

  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bp", false },
      { "<leader>bP", false },
      { "<leader>bo", false },
      { "<leader>br", false },
      { "<leader>bl", false },
    },
  },

  {
    "folke/noice.nvim",
    keys = {
      { "<leader>sna", false },
      { "<leader>snl", false },
      { "<leader>snh", false },
      { "<leader>snn", false },
      { "<leader>snd", false },
    },
  },

  {
    "folke/todo-comments.nvim",
    keys = {
      { "<leader>st", false },
      { "<leader>sT", false },
      { "<leader>xt", false },
      { "<leader>xT", false },
    },
  },

  {
    "folke/trouble.nvim",
    keys = {
      { "<leader>xL", false },
      { "<leader>xQ", false },
      { "<leader>xx", false },
      { "<leader>xX", false },
    },
  },

  {
    "simrat39/symbols-outline.nvim",
    keys = {
      { "<leader>cs", false },
    },
  },

  {
    "williamboman/mason.nvim",
    keys = {
      { "<leader>cm", false },
    },
  },

  {
    "stevearc/conform.nvim",
    keys = {
      { "<leader>cF", false },
    },
  },

  {
    "rcarriga/nvim-notify",
    keys = {
      { "<leader>un", false },
    },
  },

  {
    "echasnovski/mini.pairs",
    keys = {
      { "<leader>up", false },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      { "<leader>ut", false },
    },
  },
}


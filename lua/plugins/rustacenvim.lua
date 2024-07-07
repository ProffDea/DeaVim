return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = {
                ["CARGO_TARGET_DIR"] = "./target/rust-analyzer",
              },
            },
          },
        },
      },
    },
  },
}

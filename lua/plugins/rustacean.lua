return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false,
          procMacro = {
            ignored = {
              leptos_macro = {
                "server",
              },
            },
          },
        },
        rustfmt = {
          overrideCommand = { "leptosfmt", "--stdin", "--rustfmt" },
        },
      },
    },
  },
}

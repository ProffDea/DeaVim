return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        tsserver = function(_, opts)
          require("lazyvim.util").lsp.on_attach(function(client, buffer)
            if client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
            if client.name == "biome" then
              client.server_capabilities.documentFormattingProvider = true
            end
          end)
          -- require("typescript-language-server").setup({ server = opts })
          -- return true
        end,
      },
    },
  },
}

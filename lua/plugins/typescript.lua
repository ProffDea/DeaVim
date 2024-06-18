return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        tsserver = function(_, opts)
          require("lazyvim.util").lsp.on_attach(function(client, buffer)
            local disable = { "tsserver", "vtsls", "biome" }

            for _, v in ipairs(disable) do
              if client.name == v then
                client.server_capabilities.documentFormattingProvider = false
              end
            end

            local enable = { "astro" }

            for _, v in ipairs(enable) do
              if client.name == v then
                client.server_capabilities.documentFormattingProvider = true
              end
            end
          end)
          -- require("typescript-language-server").setup({ server = opts })
          -- return true
        end,
      },
    },
  },
}

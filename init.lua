return {
  updater = {
    remote = "origin",
    channel = "stable",
    version = "latest",
    branch = "nightly",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
    remotes = {},
  },

  colorscheme = "catppuccin",

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- install gdb through package manager
    -- download and unzip cpptools-linux.vsix
    -- https://github.com/microsoft/vscode-cpptools/releases
    -- launch file "./extension/debugAdapters/bin/OpenDebugAD7" when starting debugger
    setup_handlers = {
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end
    },
    formatting = {
      format_on_save = {
        enabled = true,
      },
      timeout_ms = 1000,
    },
    servers = {
      "htmx"
    },
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
}

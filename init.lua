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
}

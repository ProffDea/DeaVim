-- Any file ending in '.script' is lua
-- For S.T.A.L.K.E.R. Anomaly files
vim.cmd([[
  augroup filetypedetect
    au! BufRead,BufNewFile *.script    setfiletype lua
  augroup END
]])

-- For when in WSL
if vim.fn.has("wsl") == 1 then
  -- Official Neovim clipboard docs is slow, go with win32yank.exe
  -- https://github.com/equalsraf/win32yank
  -- change path as appropriate
  vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ["+"] = "/usr/local/bin/win32yank.exe -i --crlf",
      ["*"] = "/usr/local/bin/win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "/usr/local/bin/win32yank.exe -o --lf",
      ["*"] = "/usr/local/bin/win32yank.exe -o --lf",
    },
    cache_enabled = 0
  }
end

return {
  opt = {
    relativenumber = true,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = false,
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true,
    cmp_enabled = true,
    autopairs_enabled = true,
    diagnostics_mode = 3,
    icons_enabled = true,
    ui_notifications_enabled = true,
  },
}

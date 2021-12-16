raoulduke.lsp.init()

vim.cmd [[
  sign define LspDiagnosticsSignError text=✖
  sign define LspDiagnosticsSignWarning text=⚠
  sign define LspDiagnosticsSignInformation text=ℹ
  sign define LspDiagnosticsSignHint text=➤
]]

raoulduke.vim.augroup('RaouldukeLanguageClientAutocmds', function()
  raoulduke.vim.autocmd('ColorScheme', '*',  raoulduke.lsp.set_up_highlights)
end)

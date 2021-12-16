local pinnacle = require'wincent.pinnacle'

raoulduke.vim.augroup('RaouldukeLoupe', function()
  raoulduke.vim.autocmd('ColorScheme',  '*',  function()
    vim.cmd('highlight! QuickFixLine ' .. pinnacle.extract_highlight('PmenuSel'))
    vim.cmd('highlight! clear Search')
    vim.cmd('highlight! Search ' .. pinnacle.embolden('Underlined'))
  end)
end)

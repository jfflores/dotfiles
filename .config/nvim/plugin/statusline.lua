local augroup = raoulduke.vim.augroup
local autocmd = raoulduke.vim.autocmd

raoulduke.statusline.set()

augroup('RaouldukeStatusline', function()
  autocmd(
    'BufWinEnter,BufWritePost,FileWritePost,TextChanged,TextChangedI,WinEnter',
    '*',
    raoulduke.statusline.check_modified
  )
  autocmd('ColorScheme', '*', raoulduke.statusline.update_highlight)
  autocmd('User', 'FerretAsyncStart', raoulduke.statusline.async_start)
  autocmd('User', 'FerretAsyncFinish', raoulduke.statusline.async_finish)
end)

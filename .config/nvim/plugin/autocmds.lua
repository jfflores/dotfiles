local augroup = raoulduke.vim.augroup
local autocmd = raoulduke.vim.autocmd

local autocmds = function ()
  augroup('raouldukeAutocmds', function ()
    autocmd('BufEnter', '*', raoulduke.autocmds.buf_enter)
    autocmd('BufLeave', '?*', raoulduke.autocmds.buf_leave)
    autocmd('BufWinEnter', '?*', raoulduke.autocmds.buf_win_enter)
    autocmd('BufWritePost', '?*', raoulduke.autocmds.buf_write_post)
    autocmd('FocusGained', '*', raoulduke.autocmds.focus_gained)
    autocmd('FocusLost', '*', raoulduke.autocmds.focus_lost)
    autocmd('InsertEnter', '*', raoulduke.autocmds.insert_enter)
    autocmd('InsertLeave', '*', raoulduke.autocmds.insert_leave)
    autocmd('InsertLeave', '*', 'set nopaste')
    autocmd('TextYankPost', '*', "silent! lua vim.highlight.on_yank {higroup='Substitute', on_visual=false, timeout=200}")
    autocmd('VimEnter', '*', raoulduke.autocmds.vim_enter)
    autocmd('VimResized', '*', 'execute "normal! \\<c-w>="')
    autocmd('WinEnter', '*', raoulduke.autocmds.win_enter)
    autocmd('WinLeave', '*', raoulduke.autocmds.win_leave)
  end)
end

autocmds()

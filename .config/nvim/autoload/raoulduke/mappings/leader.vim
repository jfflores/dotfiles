" Cycle through relativenumber + number, number (only), and no numbering.
function! raoulduke#mappings#leader#cycle_numbering() abort
  execute {
        \ '00': 'set relativenumber   | set number',
        \ '01': 'set norelativenumber | set number',
        \ '10': 'set norelativenumber | set nonumber',
        \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
endfunction

function! raoulduke#mappings#leader#matchparen() abort
  " Preserve current window because {Do,No}MatchParen cycle with :windo.
  let l:currwin=winnr()
  if exists('g:loaded_matchparen')
    NoMatchParen
  else
    DoMatchParen
  endif
  execute l:currwin . 'wincmd w'
endfunction

" Zap trailing whitespace.
function! raoulduke#mappings#leader#zap() abort
  call raoulduke#functions#substitute('\s\+$', '', '')
endfunction

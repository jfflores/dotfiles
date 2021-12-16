--
-- Leader mappings.
--

local nnoremap = raoulduke.vim.nnoremap

-- <Leader><Leader> -- Open last buffer.
nnoremap('<Leader><Leader>', '<C-^>')

nnoremap('<Leader>o', ':only<CR>')

-- <Leader>p -- Show the path of the current file (mnemonic: path; useful when
-- you have a lot of splits and the status line gets truncated).
nnoremap('<Leader>p', ":echo expand('%')<CR>")

-- <Leader>pp -- Like <Leader>p, but additionally yanks the filename and sends it
-- off to Clipper.
nnoremap('<Leader>pp', ":let @0=expand('%') <Bar> :Clip<CR> :echo expand('%')<CR>")

nnoremap('<Leader>q', ':quit<CR>')

-- <Leader>r -- Cycle through relativenumber + number, number (only), and no
-- numbering (mnemonic: relative).
nnoremap('<Leader>r', raoulduke.mappings.leader.cycle_numbering, {silent = true})

nnoremap('<Leader>w', ':write<CR>')
nnoremap('<Leader>x', ':xit<CR>')

-- <Leader>zz -- Zap trailing whitespace in the current buffer.
--
--        As this one is somewhat destructive and relatively close to the
--        oft-used <leader>a mapping, make this one a double key-stroke.
nnoremap('<Leader>zz', ':call raoulduke#mappings#leader#zap()<CR>', {silent = true})

-- Stop annoying paren match highlighting from flashing all over the screen,
-- or start it.
--
-- (mnemonic: [m]atch paren)
nnoremap('<Leader>m', ':call raoulduke#mappings#leader#matchparen()<CR>', {silent = true})

-- Micro-optimizating the slightly-hard-to-type-on-Colemak-but-very-useful `gv`.
nnoremap('<Leader>v', 'gv')

-- Grow/shrink window horizontally (ie. make wider or narrower).
nnoremap('<Leader>=', ':vertical resize +5<CR>', {silent = true})
nnoremap('<Leader>-', ':vertical resize -5<CR>', {silent = true})

-- <LocalLeader>s -- Fix (most) syntax highlighting problems in current buffer
-- (mnemonic: syntax).
nnoremap('<LocalLeader>s',  ':syntax sync fromstart<CR>', {silent = true})

-- <LocalLeader>d... -- Diff mode bindings:
-- - <LocalLeader>dd: show diff view (mnemonic: [d]iff)
-- - <LocalLeader>dh: choose hunk from left (mnemonic: [h] = left)
-- - <LocalLeader>dl: choose hunk from right (mnemonic: [l] = right)
nnoremap('<LocalLeader>dd', ':Gvdiffsplit!<CR>', {silent = true})
nnoremap('<LocalLeader>dh', ':diffget //2<CR>', {silent = true})
nnoremap('<LocalLeader>dl', ':diffget //3<CR>', {silent = true})

-- <LocalLeader>e -- Edit file, starting in same directory as current file.
nnoremap('<LocalLeader>e', ":edit <C-R>=expand('%:p:h') . '/'<CR>")

-- <LocalLeader>p -- [P]rint the syntax highlighting group(s) that apply at the
-- current cursor position.
nnoremap('<LocalLeader>p',  ':echomsg v:lua.raoulduke.mappings.leader.get_highlight_group()<CR>')

-- Grow/shrink window vertically (ie. make taller or shorter).
nnoremap('<LocalLeader>=', ':resize +5<CR>', {silent = true})
nnoremap('<LocalLeader>-', ':resize -5<CR>', {silent = true})

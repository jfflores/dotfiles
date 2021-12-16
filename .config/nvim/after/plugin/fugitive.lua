local augroup = raoulduke.vim.augroup
local autocmd = raoulduke.vim.autocmd
local setlocal = raoulduke.vim.setlocal

augroup('RaouldukeFugitive', function()
  -- As per `man git-diff`, diff views for:
  --
  --  stage 0 = index
  --  stage 1 = base
  --  stage 2 = "ours" (own branch in a merge, other branch in a rebase)
  --  stage 3 = "theirs" (other branch in a merge, own branch in a rebase)
  --
  autocmd(
    'BufReadPost', 'fugitive:///*//[0123]/*',
    function()
      setlocal('modifiable', false)
      setlocal('readonly')
    end
  )
end)

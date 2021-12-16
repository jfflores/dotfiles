--
-- Command mode mappings.
--

local cnoremap = raoulduke.vim.cnoremap
local rhs = raoulduke.vim.rhs

local is_search = function()
  local cmdtype = vim.fn.getcmdtype()
  return cmdtype == '/' or cmdtype == '?'
end

cnoremap('<C-a>', '<Home>')
cnoremap('<C-e>', '<End>')

-- `<Tab>`/`<S-Tab>` to move between matches without leaving incremental search.
-- Note dependency on `'wildcharm'` being set to `<C-z>` in order for this to
-- work.
cnoremap(
  '<Tab>',
  (function ()
    if is_search() then
      return rhs('<CR>/<C-r>/')
    else
      return rhs('<C-z>')
    end
  end),
  {expr = true}
)

cnoremap(
  '<S-Tab>',
  (function ()
    if is_search() then
      return rhs('<CR>?<C-r>/')
    else
      return rhs('<S-Tab>')
    end
  end),
  {expr = true}
)

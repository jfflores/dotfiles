local map = raoulduke.vim.map
local shallow_merge = raoulduke.util.shallow_merge

local cnoremap = function (lhs, rhs, opts)
  opts = opts or {}
  map('c', lhs, rhs, shallow_merge(opts, {noremap = true}))
end

return cnoremap

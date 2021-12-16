local map = raoulduke.vim.map
local shallow_merge = raoulduke.util.shallow_merge

local xnoremap = function (lhs, rhs, opts)
  opts = opts or {}
  map('x', lhs, rhs, shallow_merge(opts, {noremap = true}))
end

return xnoremap

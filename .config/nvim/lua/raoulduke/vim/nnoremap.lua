local map = raoulduke.vim.map
local shallow_merge = raoulduke.util.shallow_merge

local nnoremap = function (lhs, rhs, opts)
  opts = opts or {}
  map('n', lhs, rhs, shallow_merge(opts, {noremap = true}))
end

return nnoremap

local eager = function()
  vim.g.RaouldukeQuickfixStatusline =
        '%7*' ..
        '%{v:lua.raoulduke.statusline.lhs()}' ..
        '%*' ..
        '%4*' ..
        '' ..
        ' ' ..
        '%*' ..
        '%3*' ..
        '%q' ..
        ' ' ..
        '%{get(w:,"quickfix_title","")}' ..
        '%*' ..
        '%<' ..
        ' ' ..
        '%=' ..
        ' ' ..
        '' ..
        '%5*' ..
        '%{v:lua.raoulduke.statusline.rhs()}' ..
        '%*'
end

return eager

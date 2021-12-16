local autoload = require'raoulduke.autoload'

local raoulduke = autoload('raoulduke')

-- Using a real global here to make sure anything stashed in here (and
-- in `raoulduke.g`) survives even after the last reference to it goes away.
_G.raoulduke = raoulduke

return raoulduke

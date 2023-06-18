local M = {}

M.get = function (theme)
  return {
    SpellBad = {fg="NONE", bg="NONE", undercurl=true, sp=theme.base08},
    SpellLocal = {fg="NONE", bg="NONE", undercurl=true, sp=theme.base0C},
    SpellCap = {fg="NONE", bg="NONE", undercurl=true, sp=theme.base0D},
    SpellRare = {fg="NONE", bg="NONE", undercurl=true, sp=theme.base0E},
  }
end

return M

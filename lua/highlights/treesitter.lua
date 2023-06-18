local M = {}

M.get = function (theme)
  return {
    ['@none'] = {fg=theme.base05, bg="NONE"},
    ['@symbol'] = {fg=theme.base0B, bg="NONE"},
    ['@scope'] = {fg="NONE", bg="NONE", bold=true},
    ['@strong'] = {fg="NONE", bg="NONE", bold=true},
    ['@emphasis'] = {fg=theme.base09, bg="NONE"},
    ['@strike'] = {fg=theme.base00, bg="NONE", strikethrough=true},
    ['@annotation'] = {fg=theme.base0F, bg="NONE"},
    ['@attribute'] = {fg=theme.base0A, bg="NONE"},
    ['@character'] = {fg=theme.base08, bg="NONE"},
    ['@error'] = {fg=theme.base08, bg="NONE"},
    ['@exception'] = {fg=theme.base08, bg="NONE"},
    ['@float'] = {fg=theme.base09, bg="NONE"},
    ['@method'] = {fg=theme.base0D, bg="NONE"},
    ['@namespace'] = {fg=theme.base08, bg="NONE"},
    ['@function.builtin'] = {fg=theme.base0D, bg="NONE"},
    ['@function.macro'] = {fg=theme.base08, bg="NONE"},
    ['@keyword.operator'] = {fg=theme.base0E, bg="NONE"},
    ['@parameter'] = {fg=theme.base08, bg="NONE"},
    ['@parameter.reference'] = {fg=theme.base05, bg="NONE"},
    ['@punctuation.delimiter'] = {fg=theme.base0F, bg="NONE"},
    ['@punctuation.special'] = {fg=theme.base05, bg="NONE"},
    ['@string.regex'] = {fg=theme.base0C, bg="NONE"},
    ['@string.escape'] = {fg=theme.base0C, bg="NONE"},
    ['@tag.delimiter'] = {fg=theme.base0F, bg="NONE"},
    ['@type.builtin'] = {fg=theme.base0A, bg="NONE"},
    ['@text'] = {fg=theme.base05, bg="NONE"},
    ['@text.uri'] = {fg=theme.base09, bg="NONE", underline=true},
    ['@text.literal'] = {fg=theme.base09, bg="NONE"},
    ['@variable.builtin'] = {fg=theme.base09, bg="NONE"},
    ['@definition'] = {fg="NONE", bg="NONE", underline=true, sp=theme.base04},
    ['@definition.usage'] = {fg="NONE", bg="NONE", underline=true, sp=theme.base04},
    ['@constant.builtin'] = {fg=theme.base09, bg="NONE"},
    ['@constant.macro'] = {fg=theme.base08, bg="NONE"},
  }
end

return M

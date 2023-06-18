local M = {}
M.get = function (theme)
  return {
    Boolean = {fg=theme.base09, bg="NONE"},
    Character = {fg=theme.base08, bg="NONE"},
    Comment = {fg=theme.base03, bg="NONE"},
    Conditional = {fg=theme.base0E, bg="NONE"},
    Constant = {fg=theme.base08, bg="NONE"},
    Define = {fg=theme.base0E, bg="NONE"},
    Delimiter = {fg=theme.base0F, bg="NONE"},
    Float = {fg=theme.base09, bg="NONE"},
    Function = {fg=theme.base0D, bg="NONE"},
    Identifier = {fg=theme.base08, bg="NONE"},
    Include = {fg=theme.base0D, bg="NONE"},
    Keyword = {fg=theme.base0E, bg="NONE"},
    Label = {fg=theme.base0A, bg="NONE"},
    Number = {fg=theme.base09, bg="NONE"},
    Operator = {fg=theme.base05, bg="NONE"},
    PreProc = {fg=theme.base0A, bg="NONE"},
    Repeat = {fg=theme.base0A, bg="NONE"},
    Special = {fg=theme.base0C, bg="NONE"},
    SpecialChar = {fg=theme.base0F, bg="NONE"},
    Statement = {fg=theme.base08, bg="NONE"},
    StorageClass = {fg=theme.base0A, bg="NONE"},
    String = {fg=theme.base0B, bg="NONE"},
    Structure = {fg=theme.base0E, bg="NONE"},
    Tag = {fg=theme.base0A, bg="NONE"},
    Todo = {fg=theme.base0A, bg=theme.base01},
    Type = {fg=theme.base0A, bg="NONE"},
    Typedef = {fg=theme.base0A, bg="NONE"},
  }
end

return M

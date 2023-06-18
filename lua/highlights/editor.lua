-- Editor highlights
local M = {}

M.get = function (theme)
  return {
    Normal = {fg=theme.base05, bg=theme.base00},
    Bold = {fg="NONE", bg="NONE", bold=true},
    Debug = {fg=theme.base08, bg="NONE"},
    Directory = {fg=theme.base0D, bg="NONE"},
    Error = {fg=theme.base00, bg=theme.base08},
    ErrorMsg = {fg=theme.base08, bg=theme.base00},
    Exception = {fg=theme.base08, bg="NONE"},
    FoldColumn = {fg=theme.base0C, bg=theme.base01},
    Folded = {fg=theme.base03, bg=theme.base01},
    IncSearch = {fg=theme.base01, bg=theme.base09},
    Italic = {fg="NONE", bg="NONE"},
    Macro = {fg=theme.base08, bg="NONE"},
    MatchParen = {fg="NONE", bg=theme.base03},
    ModeMsg = {fg=theme.base0B, bg="NONE"},
    MoreMsg = {fg=theme.base0B, bg="NONE"},
    Question = {fg=theme.base0D, bg="NONE"},
    Search = {fg=theme.base01, bg=theme.base0A},
    Substitute = {fg=theme.base01, bg=theme.base0A},
    SpecialKey = {fg=theme.base03, bg="NONE"},
    TooLong = {fg=theme.base08, bg="NONE"},
    Underlined = {fg=theme.base08, bg="NONE"},
    Visual = {fg="NONE", bg=theme.base02},
    VisualNOS = {fg=theme.base08, bg="NONE"},
    WarningMsg = {fg=theme.base08, bg="NONE"},
    WildMenu = {fg=theme.base08, bg=theme.base0A},
    Title = {fg=theme.base0D, bg="NONE"},
    Conceal = {fg=theme.base0D, bg=theme.base00},
    Cursor = {fg=theme.base00, bg=theme.base05},
    NonText = {fg=theme.base03, bg="NONE"},
    LineNr = {fg=theme.base03, bg="NONE"},
    SignColumn = {fg=theme.base03, bg="NONE"},
    StatusLine = {fg=theme.base04, bg="NONE"},
    StatusLineNC = {fg=theme.base03, bg="NONE"},
    VertSplit = {fg=theme.base02, bg="NONE"},
    ColorColumn = {fg="NONE", bg=theme.base01},
    CursorColumn = {fg="NONE", bg=theme.base01},
    CursorLine = {fg="NONE", bg=theme.base01},
    CursorLineNr = {fg=theme.base04, bg="NONE"},
    QuickFixLine = {fg="NONE", bg=theme.base01},
    PMenu = {fg=theme.base05, bg=theme.base01},
    PMenuSel = {fg=theme.base01, bg=theme.base05},
    TabLine = {fg=theme.base03, bg=theme.base01},
    TabLineFill = {fg=theme.base03, bg=theme.base01},
    TabLineSel = {fg=theme.base0B, bg=theme.base01},
  }
end

return M

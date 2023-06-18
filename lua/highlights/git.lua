local M = {}

M.get = function (theme, ns)
  return {
    DiffAdd = {fg=theme.base0B, bg=theme.base01},
    DiffChange = {fg=theme.base03, bg=theme.base01},
    DiffDelete = {fg=theme.base08, bg=theme.base01},
    DiffText = {fg=theme.base0D, bg=theme.base01},
    DiffAdded = {fg=theme.base0B, bg=theme.base00},
    DiffFile = {fg=theme.base08, bg=theme.base00},
    DiffNewFile = {fg=theme.base0B, bg=theme.base00},
    DiffLine = {fg=theme.base0D, bg=theme.base00},
    DiffRemoved = {fg=theme.base08, bg=theme.base00},

    gitcommitOverflow = {fg=theme.base08, bg="NONE"},
    gitcommitSummary = {fg=theme.base0B, bg="NONE"},
    gitcommitComment = {fg=theme.base03, bg="NONE"},
    gitcommitUntracked = {fg=theme.base03, bg="NONE"},
    gitcommitDiscarded = {fg=theme.base03, bg="NONE"},
    gitcommitSelected = {fg=theme.base03, bg="NONE"},
    gitcommitHeader = {fg=theme.base0E, bg="NONE"},
    gitcommitSelectedType = {fg=theme.base0D, bg="NONE"},
    gitcommitUnmergedType = {fg=theme.base0D, bg="NONE"},
    gitcommitDiscardedType = {fg=theme.base0D, bg="NONE"},
    gitcommitBranch = {fg=theme.base09, bg="NONE", bold=true},
    gitcommitUntrackedFile = {fg=theme.base0A, bg="NONE"},
    gitcommitUnmergedFile = {fg=theme.base08, bg="NONE", bold=true},
    gitcommitDiscardedFile = {fg=theme.base08, bg="NONE", bold=true},
    gitcommitSelectedFile = {fg=theme.base0B, bg="NONE", bold=true},
  }
end

return M

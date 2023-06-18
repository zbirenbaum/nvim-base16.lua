local M = {}

M.get = function (theme)
  return {
    mailQuoted1 = {fg=theme.base0A, bg="NONE"},
    mailQuoted2 = {fg=theme.base0B, bg="NONE"},
    mailQuoted3 = {fg=theme.base0E, bg="NONE"},
    mailQuoted4 = {fg=theme.base0C, bg="NONE"},
    mailQuoted5 = {fg=theme.base0D, bg="NONE"},
    mailQuoted6 = {fg=theme.base0A, bg="NONE"},
    mailURL = {fg=theme.base0D, bg="NONE"},
    mailEmail = {fg=theme.base0D, bg="NONE"},
  }
end

return M

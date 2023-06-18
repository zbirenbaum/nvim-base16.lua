local hl = vim.api.nvim_set_hl

local function apply_base16_theme(theme)
  -- Neovim terminal colours
  if vim.fn.has "nvim" then
    vim.g.terminal_color_0 = "#" .. theme.base00
    vim.g.terminal_color_1 = "#" .. theme.base08
    vim.g.terminal_color_2 = "#" .. theme.base0B
    vim.g.terminal_color_3 = "#" .. theme.base0A
    vim.g.terminal_color_4 = "#" .. theme.base0D
    vim.g.terminal_color_5 = "#" .. theme.base0E
    vim.g.terminal_color_6 = "#" .. theme.base0C
    vim.g.terminal_color_7 = "#" .. theme.base05
    vim.g.terminal_color_8 = "#" .. theme.base03
    vim.g.terminal_color_9 = "#" .. theme.base08
    vim.g.terminal_color_10 = "#" .. theme.base0B
    vim.g.terminal_color_11 = "#" .. theme.base0A
    vim.g.terminal_color_12 = "#" .. theme.base0D
    vim.g.terminal_color_13 = "#" .. theme.base0E
    vim.g.terminal_color_14 = "#" .. theme.base0C
    vim.g.terminal_color_15 = "#" .. theme.base07
    if vim.o.background == "light" then
      vim.g.terminal_color_background = "#" .. theme.base05
      vim.g.terminal_color_foreground = "#" .. theme.base0B
    else
      vim.g.terminal_color_background = "#" .. theme.base00
      vim.g.terminal_color_foreground = "#" .. theme.base0E
    end
  end

  local apply = function (highlights)
    for group, def in pairs(highlights) do hl(0, group, def) end
  end

  local highlights = {
    git        = require('highlights.git').get(theme),
    mail       = require('highlights.mail').get(theme),
    editor     = require('highlights.editor').get(theme),
    syntax     = require('highlights.syntax').get(theme),
    treesitter = require('highlights.treesitter').get(theme),
  }

  for _, highlight in pairs(highlights) do
    apply(highlight)
  end

end

return setmetatable({
  themes = function(name)
    name = "themes/" .. name .. "-base16"
    local present, theme_array = pcall(require, name)
    if present then
      return theme_array
    else
      error("No such base16 theme: " .. name)
    end
  end,
  apply_theme = apply_base16_theme,
  theme_from_array = function(array)
    assert(#array == 16, "base16.theme_from_array: The array length must be 16")
    local result = {}
    for i, value in ipairs(array) do
      assert(#value == 6, "base16.theme_from_array: array values must be in 6 digit hex format, e.g. 'ffffff'")
      local key = ("base%02X"):format(i - 1)
      result[key] = value
    end
    return result
  end,
}, {
  __call = function(_, ...)
    apply_base16_theme(...)
  end,
})

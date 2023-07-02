local hl = vim.api.nvim_set_hl

local function apply_base16_theme(theme)
  local apply = function (highlights)
    for group, def in pairs(highlights) do
      hl(0, group, def)
    end
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

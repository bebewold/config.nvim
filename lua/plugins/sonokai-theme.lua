local styles = {
  default = 'default',
  atlantis = 'atlantis',
  andromeda = 'andromeda',
  shusia = 'shusia',
  maia = 'maia',
  espresso = 'espresso',
}
local italic_comment = {
  enable = 0,
  disable = 1,
}
local italic = {
  enable = 0,
  disable = 1,
}
local cursor_color = {
  auto = 'auto',
  red = 'red',
  orange = 'orange',
  yellow = 'yellow',
  green = 'green',
  blue = 'blue',
  purple = 'purple',
}

return {
    'sainnhe/sonokai',
    enabled = true,
    name = 'sonokai-espresso',
    config = function()
      vim.g.sonokai_style = styles.espresso
      vim.g.sonokai_disable_italic_comment = italic_comment.enable -- default is enable
      vim.g.sonokai_enable_italic = italic.disable -- default is disable
      vim.g.sonokai_cursor = cursor_color.auto
    end,
    priority = 15000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'sonokai'
      vim.cmd.hi 'Comment gui=none'
    end,
}

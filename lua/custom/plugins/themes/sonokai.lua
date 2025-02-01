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
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'sainnhe/sonokai',
    config = function()
      vim.g.sonokai_style = styles.espresso
      vim.g.sonokai_disable_italic_comment = italic_comment.enable -- default is enable
      vim.g.sonokai_enable_italic = italic.disable -- default is disable
      vim.g.sonokai_cursor = cursor_color.auto
    end,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'sonokai'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

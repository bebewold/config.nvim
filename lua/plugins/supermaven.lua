return {
  'supermaven-inc/supermaven-nvim',
  enable = true,
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    keymaps = {
      accept_suggestion = '<Tab>',
      lear_suggestion = '<C-]>',
      accept_word = '<C-j>',
    },
    color = {
      suggestion_color = '#ffffff',
      cterm = 244,
    },
    disable_inline_completion = false,
  },
}

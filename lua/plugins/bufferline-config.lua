return {
  'akinsho/bufferline.nvim',
  enabled = false,
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    hover = {
      enabled = true,
      delay = 150,
      reveal = { 'close' },
    },
  },
}

--vim.opt.termguicolors = true

--[[ require('bufferline').setup {
  options = {
    hover = {
      enabled = true,
      delay = 150,
      reveal = { 'close' },
    },
  },
} ]]

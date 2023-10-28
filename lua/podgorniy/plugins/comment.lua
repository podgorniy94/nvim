return { -- NOT COMPLETE
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = true, -- require('Comment').setup()
}

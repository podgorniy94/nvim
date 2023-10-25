return { -- UPDATE
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = true -- require('Comment').setup()
}

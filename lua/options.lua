require "nvchad.options"

-- add yours here!

-- vim.opt.autochdir = true
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- Enable Tree-sitter based folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Start with folds open
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

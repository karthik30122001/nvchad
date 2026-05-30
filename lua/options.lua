require "nvchad.options"

-- add yours here!

-- vim.opt.autochdir = true
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- Enable Tree-sitter based folding (0.12 native)
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.wo[0][0].foldmethod = "expr"
    vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.wo[0][0].foldlevel = 99
  end,
})
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

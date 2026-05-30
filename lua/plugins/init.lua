return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- HTML auto-tag plugins
  {
    'windwp/nvim-ts-autotag',
    ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue' },
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup()
    end
  },
  -- Session persistence per folder
  {
    'rmagatti/auto-session',
    lazy = false,
    config = function()
      require("auto-session").setup({
        auto_restore_enabled = true,
        auto_save_enabled = true,
        auto_create = true,
      })
    end,
  },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  -- Comment Plugin with tsx context extention
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
      require("ts_context_commentstring").setup({
        enable_autocmd = false,
      })
      require("Comment").setup({
        pre_hook = require(
          "ts_context_commentstring.integrations.comment_nvim"
        ).create_pre_hook(),
      })
    end,
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter").setup({})
      require("nvim-treesitter").install({
        "vim", "lua", "vimdoc",
        "html", "css",
        "typescript", "tsx",
        "javascript",
      })
    end,
  },
}

-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_attach = require("nvchad.configs.lspconfig").on_attach

-------------------------------------------------------
-- HTML / CSS / Tailwindcss
-------------------------------------------------------
vim.lsp.config("html", {
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.config("cssls", {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {
    "css",
    "scss",
    "less",
  },
})

vim.lsp.config("tailwindcss", {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "templ",
  },
  settings = {
    tailwindCSS = {
      classAttributes = {
        "class",
        "className",
        "class:list",
        "classNames",
      },
      validate = true,
    },
  },
})

-------------------------------------------------------
-- Emmet
-------------------------------------------------------
vim.lsp.config("emmet_language_server", {
  capabilities = capabilities,
  filetypes = {
    "html",
    "css",
    "javascriptreact",
    "typescriptreact",
  },
})

-------------------------------------------------------
-- ESLint
-------------------------------------------------------
vim.lsp.config("eslint", {
  capabilities = capabilities,
  on_attach = on_attach,
})

-------------------------------------------------------
-- TypeScript
-------------------------------------------------------
vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {
    "html",
    "javascriptreact",
    "typescriptreact",
    "javascript",
    "typescript",
  },
})

-------------------------------------------------------
-- Lua
-------------------------------------------------------
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-------------------------------------------------------
-- Python (pylsp)
-------------------------------------------------------
vim.lsp.config("pylsp", {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        jedi_completion = { enabled = true },
        jedi_definition = { enabled = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
        jedi_signature_help = { enabled = true },
      },
    },
  },
})

-------------------------------------------------------
-- ENABLE (always last)
-------------------------------------------------------
vim.lsp.enable({
  "html",
  "tailwindcss",
  "cssls",
  "emmet_language_server",
  "eslint",
  "ts_ls",
  "lua_ls",
  "pylsp",
})


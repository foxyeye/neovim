require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

-- lspconfig 配置 gopls
require("lspconfig").gopls.setup({
  cmd = { "gopls" },  -- 使用环境变量中的 gopls
  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
    },
  },
})

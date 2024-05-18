require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require('mason-lspconfig').setup({
  -- A list of servers to automatically install if they're not already installed
  ensure_installed = { 'pylsp', 'lua_ls', 'zls' },
})

-- Set different settings for different languages' LSP
-- LSP list: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- How to use setup({}): https://github.com/neovim/nvim-lspconfig/wiki/Understanding-setup-%7B%7D
--     - the settings table is sent to the LSP
--     - on_attach: a lua callback function to run after LSP attaches to a given buffer
local lspconfig = require("lspconfig")

lspconfig.pylsp.setup({})
lspconfig.lua_ls.setup({})
lspconfig.zls.setup({})


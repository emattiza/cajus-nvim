(module config.plugin.rust-tools
  {autoload {nvim aniseed.nvim
             rust-tools rust-tools
             lsp config.plugin.lspconfig}})

(rust-tools.setup 
  {:server {:on_attach lsp.on_attach
            :standalone false}})

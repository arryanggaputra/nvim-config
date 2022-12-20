require("nvim-treesitter.configs").setup {
  ensure_installed = { "html", "bash", "c", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust",
    "java",
    "yaml", "markdown", "markdown_inline" }, -- one of "all" or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  }

}


vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = true,
  }
)

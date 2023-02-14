local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.configure('clangd', {
  on_attach = function(client, bufnr)
  end,
  settings = {
    clangd = {
      pathMappings = {
        { source = '/home/username/project', destination = '/home/username/project' }
      }
    },
    completions = {
      completeFunctionCalls = true
    }
  }
})

lsp.setup()

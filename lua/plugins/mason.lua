require("mason").setup()
require("mason-lspconfig").setup()

local on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format{async = true}<CR>', opts)
end

require("lspconfig").omnisharp.setup {
 on_attach = on_attach
}
require("lspconfig").sumneko_lua.setup{}


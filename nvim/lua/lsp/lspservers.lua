require("rust-tools").setup{}
--require('lspconfig').rust_analyzer.setup{}
require('lspconfig').tsserver.setup {}
require('lspconfig').gopls.setup {}
require 'lspconfig'.dockerls.setup {}
--require("crates").setup{}
require('lspconfig').texlab.setup {}
require("lspconfig").pyright.setup {}
require('lspconfig').clangd.setup {}
--require('lspconfig').ccls.setup{}
require('lspconfig').sumneko_lua.setup {}

require('nvim-autopairs').setup {}
require('cmp').event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done({ map_char = { tex = '' } }))

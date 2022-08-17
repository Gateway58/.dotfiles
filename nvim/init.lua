require('plugins')
require('vim-config.remaps')
require('vim-config.set')
require('lsp.cmp')
require('lsp.dap')
require('plugin-config.gitsigns')
require('plugin-config.telescope')
require("vim-config.colors")
--require('plugin-config.airline')
--vim.cmd("autocmd!")
--vim.api.nvim_create_autocmd("BufWritePre", {
--    group = vim.api.nvim_create_augroup("lotex", {clear = true}),
--    pattern = "*.tex",
--    callback = function()
--        local cwd = vim.fn.getcwd()
--        local file = vim.fn.expand('%')
--        local command = "pdflatex -output-directory="
--        os.execute(string.format([[(%s%s/build %s/%s)]], command, cwd, cwd, file))
--    end
--})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("fmt", {clear = true}),
    pattern = "*",
    command = "Neoformat",
})

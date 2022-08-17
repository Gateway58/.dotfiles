local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
---- LSP remaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)

-- Debugging remaps
keymap('n', '<leader>rd', [[:RustDebuggables<CR>]], opts);
keymap('n', '<leader>dt', function() require("dap").terminate() end, opts);
keymap('n', '<leader>dl', function() require("dapui").run_last() end, opts);
keymap('n', '<leader>dr', function() require 'dap'.repl.open() end, opts);
keymap('n', '<leader>do', function() require("dapui").open() end, opts);
keymap('n', '<leader>b', function() require 'dap'.toggle_breakpoint() end, opts);
keymap('n', '<leader>B', function() require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, opts);
keymap('n', '<leader>L', function() require 'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, opts);
--keymap('n', '<leader>lp' , [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]], opts);
keymap('n', '<C-D>', function() require 'dap'.continue() end, opts);
keymap('n', '<F2>', function() require 'dap'.step_over() end, opts);
keymap('n', '<F3>', function() require 'dap'.step_into() end, opts);
keymap('n', '<F4>', function() require 'dap'.step_out() end, opts);

-- Telescope remap
keymap('n', '<c-p>', function() require("telescope.builtin").git_files() end, opts)
keymap('n', '<c-b>', function() require("telescope.builtin").buffers() end, opts)
keymap('n', '<Leader>pf', function() require "telescope".extensions.file_browser.file_browser() end, opts)
keymap('n', '<Leader>gc', function() require("telescope.builtin").git_commits() end, opts)
keymap('n', '<Leader>gb', function() require("telescope.builtin").git_branches() end, opts)
keymap('n', '<c-s>', function() require("telescope.builtin").git_status() end, opts)

-- Gitsigns
keymap('n', '<c-g>', ':Git<CR>', opts)
keymap('n', '<c-h>', ':G log<CR>', opts)
keymap('n', '<c-l>', ':Gitsigns preview_hunk<CR>', opts)
keymap('n', 'gh', ':diffget //2<CR>', opts)
keymap('n', 'gl', ':diffget //3<CR>', opts)

-- Undotree
keymap('n', '<leader>us', ':UndotreeShow<CR>', opts)
keymap('n', '<leader>uh', ':UndotreeHide<CR>', opts)
keymap('n', '<leader>uf', ':UndotreeFocus<CR>', opts)

-- Compile remaps
keymap('n', '<leader>rs', ':!cargo run<CR>', opts)
keymap('n', '<leader>rt', ':!cargo test<CR>', opts)
keymap('n', '<leader>go', ':!go run % <CR>', opts)
keymap('n', '<leader>py', ':!python %<CR>', opts)
keymap('n', '<leader>cp', ':!g++ -std=c++17 -g %:r.cpp -o %:r.out && ./%:r.out<CR>', opts)
keymap('n', '<leader>cc', ':!g++ -Wall -g % -o %:r.out && ./%:r.out<CR>', opts)
keymap('n', '<leader>ns', ':!nasm -f elf -o %:r.o % && ld -m elf_i386 -o %:r %:r.o && ./%:r<CR>', opts)

-- vim
keymap('n', '<leader>s', ':nohl<CR>', opts)
keymap('n', '<c-t>', ':tabedit .<CR>', opts)
keymap('n', '<leader>ma', ':marks<CR>', opts)
keymap('n', '<leader>md', ':delm!<CR>', opts)
keymap('n', '<leader>a', ':delmarks A-Z0-9<CR>', opts);
-- Splits
keymap('n', '<leader>h', ':wincmd h <CR>', opts)
keymap('n', '<leader>j', ':wincmd j<CR>', opts)
keymap('n', '<leader>k', ':wincmd k<CR>', opts)
keymap('n', '<leader>l', ':wincmd l<CR>', opts)
keymap('n', '<leader>v', function() vim.cmd(string.format("vert resize %d", vim.fn.input("vertical-resize: "))) end, opts)
--keymap('n', '<leader>s', function() vim.cmd(string.format("resize %d", vim.fn.input("resize: "))) end, opts)

keymap('n', '<leader>deq', [[:%s/\$oe\$/ö/g | %s/\$ae\$/ä/g | %s/\$ue\$/ü/g | %s/\$ss\$\ß/g]], { noremap = true })
keymap('n', '<leader>dea', [[:%s/\$ae\$/ä/g]], { noremap = true })
keymap('n', '<leader>deo', [[:%s/\$oe\$/ö/g]], { noremap = true })
keymap('n', '<leader>deu', [[:%s/\$ue\$/ü/g]], { noremap = true })
keymap('n', '<leader>des', [[:%s/\$ss\$/ß/g]], { noremap = true })
keymap('n', '<leader>p', ':previous <CR>', opts)
keymap('n', '<leader>n', ':next <CR>', opts)

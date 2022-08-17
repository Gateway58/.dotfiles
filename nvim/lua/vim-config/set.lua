vim.cmd("set encoding=UTF-8")
vim.cmd("set guicursor=")
--vim.ob.encoding=UTF-8
--vim.ob.guicursor
vim.o.hlsearch = true
vim.o.hidden=true
vim.o.errorbells=false
vim.o.tabstop=4 softtabstop=4
vim.o.shiftwidth=4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.number = true
vim.o.wrap = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.backup =false
--vim.ob.undodir= ~/.vim/undodir
vim.o.undofile = true
vim.o.incsearch = true
vim.o.writebackup = false
vim.o.spelllang=en,de
vim.o.spell = true
vim.cmd("set complete+=kspell")
--vim.ob.complete+=kspell                          
--"vim.ob.clipboard=unnamed                        
vim.o.scrolloff=8
-- "vim.ob.noshowmode                            
vim.o.completeopt=menuone,noinsert,noselect
vim.wo.signcolumn="yes"
vim.o.spell = true
vim.o.spelllang= "en,de"
--vim.o.cmdheight = 2                               
--vim.ob.updatetime=50                             
--vim.ob.shortmess+=c                              
vim.wo.colorcolumn= "100"
vim.wo.relativenumber= true
vim.wo.cursorline = true
vim.o.lazyredraw = true

vim.o.autochdir = true
vim.o.laststatus = 3
vim.bo.textwidth=100
-- vim.ob.t_Co=256                               
-- "vim.ob.langmap=dg,ek,fe,gt,il,jy,kn,lu,nj,pr,
vim.o.splitright= true
vim.o.splitbelow = true

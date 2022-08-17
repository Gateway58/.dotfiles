local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local statu_ok, packer = pcall(require, "packer")
if not statu_ok then
    return
end
return packer.startup(function (use)
    use {'wbthomason/packer.nvim', opt=true}
    --cmp
    use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-calc'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    --use 'hrsh7th/cmp-vsnip'
    use {
    'saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    config = function()
        require('crates').setup()
    end,
    }
    use 'hrsh7th/nvim-cmp'

    --Lsp related
    use { 'simrat39/rust-tools.nvim', branch = "modularize_and_inlay_rewrite"}
    -- use 'hrsh7th/vim-vsnip'
    use 'L3MON4D3/LuaSnip'
    use { 'saadparwaiz1/cmp_luasnip' }
    use 'neovim/nvim-lspconfig'
    use 'windwp/nvim-autopairs'

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'

    --For my experience
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', event = 'UIEnter', config = function()
        require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = false }, textobjects = { enable = false }}
    end }
    use {'sbdchd/neoformat', cmd = 'Neoformat' }
    use {'tpope/vim-fugitive', cmd = 'Git'}
    use 'lewis6991/gitsigns.nvim'
    use {'mbbill/undotree', cmd = 'UndotreeShow'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'onsails/lspkind.nvim'

    -- Efficiency
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzf-native.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'tpope/vim-surround'

    --Helper
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    -- use 'jose-elias-alvarez/null-ls.nvim'
    use 'sharkdp/fd'
  if packer_bootstrap then
    require('packer').sync()
  end
end)

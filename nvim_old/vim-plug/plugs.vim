" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'jiangmiao/auto-pairs'   " Auto pairs for '(' '[' '{'
  Plug 'easymotion/vim-easymotion'     " Easymotion

	" comment code
  Plug 'numToStr/Comment.nvim'

	Plug 'mhinz/vim-startify'

	"File Explorer
	Plug 'kyazdani42/nvim-tree.lua'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

	" " Telescope file finder / picker
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

	" Theme
  Plug 'eddyekofo94/gruvbox-flat.nvim'

	" Status line
  Plug 'hoob3rt/lualine.nvim'
  " Icon
  Plug 'kyazdani42/nvim-web-devicons'

  " Cmp plugins
  Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
  Plug 'hrsh7th/cmp-path' " path completions
  Plug 'hrsh7th/cmp-buffer' " Buffer completions
  Plug 'saadparwaiz1/cmp_luasnip' " Snippets completions
  Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp

  " Language server 
  Plug 'neovim/nvim-lspconfig' " Collection of configurations for built-in LSP client
  Plug 'williamboman/nvim-lsp-installer' " simple to use language server installer 
   
  " Snippets
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets' 

  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()


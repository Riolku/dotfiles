call plug#begin()

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'

" tpope
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" Misc utilities
Plug 'farmergreg/vim-lastplace'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'

" Colorscheme
Plug 'catppuccin/nvim', { 'as': 'catpuccin' }

call plug#end()
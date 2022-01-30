
let $VIMINIT = '~/.config/nvim/init.vim'

set clipboard+=unnamedplus
set encoding=UTF-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=8
set backspace=indent,eol,start
set background=dark
set nohlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set shada="NONE"
set backupcopy=yes


call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'neoclide/coc-python',{'do':'yarn install --frozen-lockfile'}
Plug ('neoclide/coc.nvim')
Plug ('joshdick/onedark.vim')
Plug ('gruvbox-community/gruvbox')
Plug ('iCyMind/NeoSolarized')
Plug ('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')
Plug ('jiangmiao/auto-pairs')
Plug ('norcalli/nvim-colorizer.lua')
Plug 'preservim/nerdtree'
Plug 'nikvdp/ejs-syntax'
Plug ('davidhalter/jedi-vim')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-eslint', 'coc-css', 'coc-java']

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

set termguicolors
let g:airline_theme='gruvbox'

let g:python3_host_prog='C:/Python38/python3.exe'
let g:python_host_prog='C:/Python27/python.exe'

let g:user_emmet_leader_key=','

lua require 'colorizer'.setup()
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

highlight Normal guibg=none

let mapleader = " "

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <leader>n :NERDTreeFocus<CR>
noremap <leader>fg :GFiles<CR>
noremap <C-t> :tabnew<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>ff :Files<CR>

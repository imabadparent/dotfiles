" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

"##################
"### Properties ###
"##################

" Set tabs
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set cindent shiftwidth=4

" Set line numbers
set number
set relativenumber

" Make vim look a bit nicer
set encoding=utf-8
set termguicolors
set cursorline
set colorcolumn=80
set nowrap
set scrolloff=9999
set foldmethod=syntax

" Show non printable characters
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•
set list

set clipboard+=unnamedplus


" GUI Things
"set guifont=Courier\ Prime\ Code:h12
set guifont=Code\ New\ Roman\ Nerd\ Font:h12
let g:neovide_cursor_animation_length=0
set mouse=a

"################
"### Keybinds ###
"################

let mapleader="ö"

" Change Window movement keys
nnoremap <A-h> <C-W>h
nnoremap <A-j> <C-W>j
nnoremap <A-k> <C-W>k
nnoremap <A-l> <C-W>l

" Set newline keys
nmap <CR> o<Esc>k

" Set nerdtree keybind
map <A-f> :NERDTreeToggle<CR>

" CoC Commands

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gs <Plug>(coc-diagnostic-next)
nmap <silent> gS <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :CocCommand clangd.switchSourceHeader<CR>

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>a  <Plug>(coc-codeaction-cursor)
nmap <leader>qf  <Plug>(coc-fix-current)

"###############
"### Plugins ###
"###############

" Add plugins
call plug#begin(stdpath('data') . '/plugged')
    " Colorschemes
    Plug 'dracula/vim',           { 'as':'dracula'}
    " Functionality
    Plug 'tpope/vim-surround'
    Plug 'lambdalisue/suda.vim'
    Plug 'godlygeek/tabular'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tibabit/vim-templates'
    " Keybinds
    Plug 'folke/which-key.nvim'
    Plug 'unblevable/quick-scope'
    Plug 'chaoren/vim-wordmotion'
    Plug 'ap/vim-css-color'
    " Language settings
    Plug 'neoclide/coc.nvim',     { 'branch': 'release'}
    Plug 'elkowar/yuck.vim'
    Plug 'sheerun/vim-polyglot'
    " Fun
call plug#end()

" whichkey settings
lua << EOF
  require("which-key").setup { }
EOF

" quickscope settings
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg=#ffb86c gui=underline ctermfg=11
    autocmd ColorScheme * highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=13
augroup END

" vim-templates settings
let g:tmpl_search_paths = ['/home/styx/.config/nvim/templates']

" nerdtree
autocmd BufEnter NERD_tree_* | execute 'normal R'

" Set color scheme with transparency
"let g:dracula_colorterm = 0
colorscheme dracula
hi ColorColumn guibg=#44475a
hi NonText guifg=#777777
hi Comment guifg=#ffb86c

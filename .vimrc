"--------------
filetype plugin indent on
syntax on
set nocompatible
set hidden
set encoding=UTF-8
set belloff=all
set ruler
set number relativenumber
set cursorline
set smoothscroll
set mouse=a guicursor=
set showmode showcmd
set showmatch incsearch nohlsearch smartcase
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
set backspace=indent,eol,start
set wrap nowrapscan
set wildmenu wildmode=longest,list,full
set clipboard=unnamed
set noswapfile nobackup noundofile viminfofile=NONE
set guifont=Consolas:h12
set guioptions-=m guioptions-=T guioptions-=r guioptions-=L
set completeopt=menu,menuone,noinsert,noselect,preview
set updatetime=100
set signcolumn=yes
set laststatus=2

let g:mapleader = " "

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
"--------------
call plug#begin('$VIM/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'manasthakur/vim-commentor'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline', { 'tag' : 'v0.11' }

Plug 'neoclide/coc.nvim', {'branch': 'release' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
"--------------

colorscheme onedark

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1

nnoremap <leader>f :NERDTreeFocus<CR>
noremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusConcealBrackets = 1 

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

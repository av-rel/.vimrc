call plug#begin('$VIM/plugged')
"--------------

Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator', { 'tag' : 'v1.0' }

Plug 'prabirshrestha/async.vim', { 'branch' : 'master' }
Plug 'prabirshrestha/vim-lsp', { 'tag' : 'v0.1.4' }

Plug 'piec/vim-lsp-clangd', {  }
Plug 'fatih/vim-go', { 'tag' : 'v1.28' }
Plug 'zah/nim.vim', { 'tag' : '1.1@2' }
Plug 'h-225/odin.vim', {  }
Plug 'klen/python-mode', { 'branch' : 'master' , 'tag' : '0.13.0' }
Plug 'rust-analyzer/rust-analyzer', { 'tag' : 'nightly' }
Plug 'zig-lang/zig.vim', {  }

"------------
call plug#end()

color molokai
let g:indent_guides_enable_on_vim_startup = 1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

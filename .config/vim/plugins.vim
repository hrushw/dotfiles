runtime ftplugin/man.vim

call plug#begin()

Plug 'vifm/vifm.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'

Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'whatyouhide/vim-gotham'

Plug 'vim-airline/vim-airline'

Plug 'lervag/vimtex'

call plug#end()

" Set colorscheme
set termguicolors
colorscheme gotham256

" Shortcuts for nerdtree and tagbar
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>

" airline configuration
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" vimtex configuration
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

call plug#begin()
Plug 'bluz71/vim-moonfly-colors'

Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
call plug#end()

colorscheme moonfly

" Key bindings
nnoremap <Leader>.t :TagbarToggle<CR>
nnoremap <Leader>.f :colorscheme quiet<CR>:Limelight<CR>:Goyo<CR>
nnoremap <Leader>.F :colorscheme quiet<CR>:Limelight<CR>:Goyo 120<CR>
nnoremap <Leader>.qf :colorscheme moonfly<CR>:Limelight!<CR>:Goyo!<CR>

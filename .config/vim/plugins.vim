" vim:fileencoding=utf-8:foldmethod=marker

" Plugin list {{{
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'

Plug 'sile-typesetter/vim-sile'
call plug#end()
" }}}

nnoremap <Leader>.n :NERDTreeToggle<CR>

" Tagbar settings {{{

nnoremap <Leader>.t :TagbarToggle<CR>
let g:tagbar_foldlevel = 1
let g:tagbar_sort = 0

let g:tagbar_position = 'botright vertical'
let g:tagbar_height = 16
let g:tagbar_width = 40

let g:tagbar_autofocus = 0
let g:tagbar_autoclose = 0
let g:tagbar_autoclose_netrw = 1
let g:tagbar_expand = 0

let g:tagbar_compact = 1
let g:tagbar_help_visibility = 0
let g:tagbar_indent = 1
let g:tagbar_show_data_type = 1
let g:tagbar_show_visibility = 0
let g:tagbar_show_linenumbers = 0
let g:tagbar_show_prefix = 1
let g:tagbar_show_tag_linenumbers = 1
let g:tagbar_show_tag_count = 1
let g:tagbar_autoshowtag = 1

" Keybinds:
" p - go to tag but stay in tagbar window
" P - go to tag in preview window
" q - close tagbar window

" }}}


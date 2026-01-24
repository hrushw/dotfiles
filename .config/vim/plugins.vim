" vim:fileencoding=utf-8:foldmethod=marker

" Using [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins
" Plugin list {{{
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Language support
Plug 'preservim/vim-markdown'
Plug 'lervag/vimtex'
Plug 'sile-typesetter/vim-sile'
Plug 'marekmaskarinec/vim-umka'
Plug 'ollykel/v-vim'
Plug 'baskerville/vim-sxhkdrc'
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

nnoremap <Leader>qq :Tags<CR>
nnoremap <Leader>qb :Buffers<CR>
nnoremap <Leader>f :FZF<CR>

let g:startify_session_dir = '~/.local/share/vim/session'

let g:startify_enable_special = 1
let g:startify_lists = [
	\ { 'type': 'files',     'header': ['   MRU']            },
	\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
	\ { 'type': 'sessions',  'header': ['   Sessions']       },
	\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]

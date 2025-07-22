" vim:fileencoding=utf-8:foldmethod=marker

" Plugin list {{{
call plug#begin()
Plug 'bluz71/vim-moonfly-colors'
Plug 'andreasvc/vim-256noir'
Plug 'ryanpcmcquen/true-monochrome_vim'

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

Plug 'sile-typesetter/vim-sile'
call plug#end()
" }}}

colorscheme moonfly

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

" goyo and limelight {{{
" nnoremap <Leader>.f :colorscheme quiet<CR>:Limelight<CR>:Goyo<CR>
" nnoremap <Leader>.F :colorscheme quiet<CR>:Limelight<CR>:Goyo 120<CR>
" nnoremap <Leader>.qf :colorscheme moonfly<CR>:Limelight!<CR>:Goyo!<CR>

let g:focusmodeenabled = 0

function FocusModeEnable()
	let g:focusmodeenabled = 1
	colorscheme 256_noir
	Goyo 80%
	Limelight
endfunc

function FocusModeDisable()
	let g:focusmodeenabled = 0
	colorscheme moonfly
	Goyo!
	Limelight!
endfunc

function FocusModeToggle()
	if g:focusmodeenabled
		call FocusModeDisable()
	else
		call FocusModeEnable()
	endif
endfunc

command Refocus call FocusModeToggle()
" }}}

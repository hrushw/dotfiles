call plug#begin()
Plug 'bluz71/vim-moonfly-colors'
Plug 'andreasvc/vim-256noir'
Plug 'ryanpcmcquen/true-monochrome_vim'

Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

Plug 'sile-typesetter/vim-sile'
call plug#end()

colorscheme moonfly

" Key bindings
nnoremap <Leader>.t :TagbarToggle<CR>
" nnoremap <Leader>.f :colorscheme quiet<CR>:Limelight<CR>:Goyo<CR>
" nnoremap <Leader>.F :colorscheme quiet<CR>:Limelight<CR>:Goyo 120<CR>
" nnoremap <Leader>.qf :colorscheme moonfly<CR>:Limelight!<CR>:Goyo!<CR>

let g:tagbar_foldlevel = 1

let g:focusmodeenabled=0

function FocusModeEnable()
	let g:focusmodeenabled=1
	colorscheme 256_noir
	Goyo 80%
	Limelight
endfunc

function FocusModeDisable()
	let g:focusmodeenabled=0
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

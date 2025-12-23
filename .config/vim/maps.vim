" Mappings
let g:mapleader=' '

" match with 'less' pager
nnoremap <Esc>u :noh<CR>

nnoremap <C-j> <C-e>j
nnoremap <C-k> <C-y>k

nnoremap <Leader> <C-w>

func TabMoveUp()
	execute 'tabmove +' . max([v:count, 1])
endfunc

func TabMoveDown()
	execute 'tabmove -' . max([v:count, 1])
endfunc

func TabFocusUp()
	execute 'tabnext +' . max([v:count, 1])
endfunc

func TabFocusDown()
	execute 'tabnext -' . max([v:count, 1])
endfunc


nnoremap <Leader>] gt
nnoremap <Leader>[ gT
nnoremap g[ :<C-u>call TabMoveDown()<CR>
nnoremap g] :<C-u>call TabMoveUp()<CR>

nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprev<CR>

tnoremap <C-n> <C-w>N
tnoremap <C-w>n <C-n>

nnoremap <C-x><C-c> :q<CR>
nnoremap <C-x><C-f> :edit<space>

nnoremap <Leader>qp :HelpToc<CR>

nnoremap <C-c><C-c> :!make<CR>

inoremap <C-g> <Esc>
nnoremap <C-g> <Esc>

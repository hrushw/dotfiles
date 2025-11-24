" Mappings
let g:mapleader=' '

" match with 'less' pager
nnoremap <Esc>u :noh<CR>

nnoremap <C-j> <C-e>j
nnoremap <C-k> <C-y>k

nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L
nnoremap <Leader>T <C-w>T

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

nnoremap <Leader>iw :vert resize +10<CR>
nnoremap <Leader>ib :vert resize -10<CR>

nnoremap <Leader>mw :resize +10<CR>
nnoremap <Leader>mb :resize -10<CR>



nnoremap <Leader>oh :aboveleft vert split<Space>
nnoremap <Leader>oj :belowright split<Space>
nnoremap <Leader>ok :aboveleft split<Space>
nnoremap <Leader>ol :belowright vert split<Space>

nnoremap <Leader>oH :topleft vert split<Space>
nnoremap <Leader>oJ :botright split<Space>
nnoremap <Leader>oK :topleft split<Space>
nnoremap <Leader>oL :botright vert split<Space>

nnoremap <Leader>oo :edit<Space>
nnoremap <Leader>ot :tabnew<Space>

nnoremap <Leader>o_h :aboveleft vert terminal<CR>
nnoremap <Leader>o_j :belowright terminal<CR>
nnoremap <Leader>o_k :aboveleft terminal<CR>
nnoremap <Leader>o_l :belowright vert terminal<CR>

nnoremap <Leader>o_H :topleft vert terminal<CR>
nnoremap <Leader>o_J :botright terminal<CR>
nnoremap <Leader>o_K :topleft terminal<CR>
nnoremap <Leader>o_L :botright vert terminal<CR>

nnoremap <Leader>o_t :tab terminal<CR>

tnoremap <C-n> <C-w>N
tnoremap <C-w>n <C-n>

nnoremap <C-c> <Nop>

nnoremap <C-x><C-c> :q<CR>
nnoremap <C-x><C-f> :edit<space>

nnoremap <Leader>qp :HelpToc<CR>

nnoremap <C-c><C-c> :!make<CR>

inoremap <C-g> <Esc>
nnoremap <C-g> <Esc>

tnoremap <C-g> <C-w>N
tnoremap <C-w>g <C-g>

nnoremap <Leader><Esc> <Nop>

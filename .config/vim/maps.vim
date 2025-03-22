" Mappings
let g:mapleader=' '

" match with 'less' pager
nnoremap <Esc>u :noh<CR>

nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L
nnoremap <Leader>T <C-w>T

nnoremap <Leader>[ gT
nnoremap <Leader>] gt

nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprev<CR>

nnoremap <Leader>oh :aboveleft vert split<Space>
nnoremap <Leader>oj :belowright split<Space>
nnoremap <Leader>ok :aboveleft split<Space>
nnoremap <Leader>ol :belowright vert split<Space>

nnoremap <Leader>oH :topleft vsplit<Space>
nnoremap <Leader>oJ :botright split<Space>
nnoremap <Leader>oK :topleft split<Space>
nnoremap <Leader>oL :botright vsplit<Space>

nnoremap <Leader>oo :edit<Space>
nnoremap <Leader>ot :tabnew<Space>

nnoremap <Leader>o_h :aboveleft vert terminal<Space>
nnoremap <Leader>o_j :belowright terminal<Space>
nnoremap <Leader>o_k :aboveleft terminal<Space>
nnoremap <Leader>o_l :belowright vert terminal<Space>

nnoremap <Leader>o_H :topleft vert terminal<Space>
nnoremap <Leader>o_J :botright terminal<Space>
nnoremap <Leader>o_K :topleft terminal<Space>
nnoremap <Leader>o_L :botright vert terminal<Space>

nnoremap <Leader>o_t :tab terminal<Space>

tnoremap <C-n> <C-w>N
tnoremap <C-w>n <C-n>


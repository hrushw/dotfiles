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

nnoremap <C-x><C-c> :qa<CR>
nnoremap <C-x><C-f> :edit<space>

nnoremap <Leader>qp :HelpToc<CR>

nnoremap <C-c><C-c> :!make<CR>

inoremap <C-g> <Esc>
nnoremap <C-g> <Esc>
cnoremap <C-g> <Esc>

nnoremap <C-x>k :bdel<CR>
nnoremap <C-x>0 :close<CR>

" digraphs
digr ii 8747
digr i1 8747
digr i2 8748
digr i3 8749
digr II 8750
digr I1 8750
digr I2 8751
digr I3 8752
digr I4 10764
digr i! 8992
digr iv 8993
digr i\| 9134

digr iS 8305
digr is 7522

digr (! 9115
digr (\| 9116
digr (v 9117
digr )! 9118
digr )\| 9119
digr )v 9120
digr [! 9121
digr [\| 9122
digr [v 9123
digr ]! 9124
digr ]\| 9125
digr ]v 9126
digr {! 9127
digr {\| 9128
digr {v 9129
digr }! 9130
digr }\| 9131
digr }v 9132


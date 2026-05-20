" Mappings
let g:mapleader=' '

" match with 'less' pager
nn <Esc>u :noh<CR>

nn <C-j> <C-e>j
nn <C-k> <C-y>k

nn <Leader> <C-w>

func TabMoveUp()
	execute 'tabmove +' . max([v:count, 1])
endf

func TabMoveDown()
	execute 'tabmove -' . max([v:count, 1])
endf

func TabFocusUp()
	execute 'tabnext +' . max([v:count, 1])
endf

func TabFocusDown()
	execute 'tabnext -' . max([v:count, 1])
endf


nn <Leader>] gt
nn <Leader>[ gT
nn g[ :<C-u>call TabMoveDown()<CR>
nn g] :<C-u>call TabMoveUp()<CR>

nn <Leader>n :bnext<CR>
nn <Leader>p :bprev<CR>

nn <Leader>qp :HelpToc<CR>

tnoremap <C-n> <C-w>N
tnoremap <C-w>n <C-n>

" command mode keybinds
cno <C-h> <Left>
cno <C-j> <Down>
cno <C-k> <Up>
cno <C-l> <Right>
cno <C-w> <C-Right>
cno <C-b> <C-Left>
cno <C-g> <Esc>
cno <C-p> <Home>
cno <C-n> <End>

" Emacs keys slowly growing on me

nn <C-s> /

nn <C-x><C-c> :qa<CR>
nn <C-x><C-f> :edit<space>

nn <C-c><C-c> :!make<CR>

ino <C-g> <Esc>
nn <C-g> <Esc>
cno <C-g> <Esc>

nn <C-x>k :bdel<CR>
nn <C-x>0 :close<CR>

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


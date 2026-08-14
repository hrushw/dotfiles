vim.opt.exrc = false
vim.opt.secure = true

vim.opt.shadafile = vim.env.XDG_STATE_HOME .. "/nvim/viminfo"
vim.opt.undofile = true
vim.opt.undodir = vim.env.XDG_STATE_HOME .. "/nvim/undo"
vim.opt.backupdir = "./.nvimbackup," .. vim.env.XDG_DATA_HOME .. "/nvim/backup,.,~/tmp/,~/"
vim.opt.history = 4096

vim.opt.shortmess = "atToO"
vim.opt.fillchars = "vert:|,fold:-,eob: ,lastline:@"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrapscan = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.cindent = true
vim.opt.autoindent = true
vim.opt.expandtab = false
vim.opt.smarttab = true

vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.autowriteall = false

vim.opt.showmode = true
vim.opt.warn = true

vim.opt.hidden = true

vim.opt.termguicolors = true;
vim.opt.background = "dark";
vim.cmd.colorscheme("catppuccin");

vim.keymap.set('n', "`", "<C-w>")
vim.keymap.set('n', "<Esc>u", "<Cmd>noh<CR>")

vim.g.mapleader = ' '

vim.keymap.set('n', "<Leader>p", "<Cmd>bp<CR>")
vim.keymap.set('n', "<Leader>n", "<Cmd>bn<CR>")

vim.keymap.set('n', "<Leader>]", "gt")
vim.keymap.set('n', "<Leader>[", "gT")

vim.keymap.set('c', "<C-h>", "<Left>")
vim.keymap.set('c', "<C-j>", "<Down>")
vim.keymap.set('c', "<C-k>", "<Up>")
vim.keymap.set('c', "<C-l>", "<Right>")
vim.keymap.set('c', "<C-w>", "<C-Right>")
vim.keymap.set('c', "<C-b>", "<C-Left>")
vim.keymap.set('c', "<C-p>", "<Home>")
vim.keymap.set('c', "<C-n>", "<End>")

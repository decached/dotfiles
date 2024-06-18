""""""""""""""""
" Key Mappings "
""""""""""""""""

let mapleader = ' '

" Fn Keys
noremap <F2> :NERDTreeToggle<CR>
noremap <F4> :tabe $MYVIMRC<CR>
noremap <F5> :source $MYVIMRC<CR>
noremap <F6> :call RefreshPlugs()<CR>

" Switching between buffers, tabs, panes
nnoremap <leader>, :bprevious<CR>
nnoremap <leader>. :bnext<CR>
nnoremap <leader>bw :bwipeout<CR>

" Git (requires vim-fugitive)
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gp :Git push<CR>

" Custom Leaders
nnoremap <leader>q :q!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>i gg=G''
nnoremap <leader>pp :setlocal paste!<CR>

" Navigation
nnoremap <leader>a ^
nnoremap <leader>e $
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>

" Eclim
noremap <C-S-i> :JavaImportOrganize<CR>

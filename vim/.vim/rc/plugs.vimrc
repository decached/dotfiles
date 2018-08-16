" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" vim-plug
call plug#begin('~/.vim/bundle')

" Plugins
" Language
    " web
        Plug 'elzr/vim-json'
        Plug 'othree/html5.vim'
        Plug 'pangloss/vim-javascript'
        Plug 'rstacruz/sparkup'
    " python
        Plug 'klen/python-mode'
    " go
        Plug 'fatih/vim-go'
    " ruby
        Plug 'vim-ruby/vim-ruby'
    " markdown
        Plug 'jtratner/vim-flavored-markdown'
        Plug 'tpope/vim-markdown'
    " latex
        Plug 'lervag/vimtex'
        Plug 'xuhdev/vim-latex-live-preview'
    " support
        Plug 'scrooloose/syntastic'
        Plug 'Valloric/YouCompleteMe'
        Plug 'tpope/vim-commentary'
        Plug 'aperezdc/vim-template'
    " pug
        Plug 'digitaltoad/vim-pug'

" GUI
    Plug 'nanotech/jellybeans.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'kien/rainbow_parentheses.vim'

" Project
    Plug 'scrooloose/nerdtree'                      " File explorer
    Plug 'kien/ctrlp.vim'                           " Fuzzy file search across project
    Plug 'tpope/vim-fugitive'                       " Git inside vim
    Plug 'tpope/vim-git'                            " Support for vim-fugitive
    Plug 'airblade/vim-gitgutter'                   " See git diff next to line number

" Misc
    Plug 'junegunn/vim-easy-align'                  " Align characters
    Plug 'raimondi/delimitMate'                     " Auto-completion for quotes, parens, etc
    Plug 'tpope/vim-repeat'                         " Repeat with a '.' [dot]
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-abolish'                        " Smart search & replace

" To Learn
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
    " Plug 'svermeulen/vim-easyclip'                " Simplified clipboard functionality

call plug#end()

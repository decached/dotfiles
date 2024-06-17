" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" vim-plug
call plug#begin('~/.vim/bundle')

" Plugins
" Language
    " web
        Plug 'elzr/vim-json', {'for': 'json'}
        Plug 'othree/html5.vim', {'for': 'html'}
        Plug 'pangloss/vim-javascript', {'for': 'javascript'}
        Plug 'rstacruz/sparkup', {'for': 'html'}
    " python
        Plug 'klen/python-mode', {'for': 'python'}
    " go
        Plug 'fatih/vim-go', {'for': 'go'}
    " ruby
        Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
    " markdown
        Plug 'jtratner/vim-flavored-markdown', {'for': 'markdown'}
        Plug 'tpope/vim-markdown', {'for': 'markdown'}
    " latex
        " Plug 'lervag/vimtex', {'for': 'tex'}
        " Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
    " support
        Plug 'scrooloose/syntastic'
        Plug 'Valloric/YouCompleteMe', {'do': './install.py', 'for': ['c', 'cpp', 'py']}
        Plug 'tpope/vim-commentary'
        Plug 'aperezdc/vim-template'
    " pug
        " Plug 'digitaltoad/vim-pug', {'for': 'pug'}

" GUI
    Plug 'nanotech/jellybeans.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
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

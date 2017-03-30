"Change color scheme to delek
colorscheme delek

"Enable syntax highlighting
syntax enable

"Set tabs to 4 spaces
set tabstop=4

"Show line numbers
set number

"Show last command
set showcmd

"Show a line under the cursor
set cursorline

"Indent according to syntax
filetype indent on

"Search Parameters
set showmatch
set hlsearch

"Enable folding up to 10 levels based on indentation
set foldenable
set foldlevelstart=10
set foldmethod=indent

"Adjustements for Python and YAML
autocmd Filetype python set expandtab shiftwidth=2 tabstop=2
autocmd Filetype *.yaml set expandtab shiftwidth=4 tabstop=4

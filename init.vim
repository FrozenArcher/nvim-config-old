set nu rnu
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set nobackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
set cursorline

lua require("plugins")
lua require("mappings")
lua require("config")

let g:neon_style = "dark"
let g:neon_bold = v:true
let g:neon_italic_variable = v:true
let g:neon_italic_keyword = v:true
colorscheme neon

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

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_dim_foreground = 1
let g:edge_diagnostic_virtual_text = 'colored'
"colorscheme edge

colorscheme tokyonight

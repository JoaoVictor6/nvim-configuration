" Habilita a exibição de números de linha
set number

" (Opcional) Habilita números de linha relativos
set relativenumber

" Habilita o uso do clipboard do sistema
set clipboard=unnamedplus

" Configura o tamanho de indentação
set tabstop=2         " Número de espaços que um <Tab> representa
set shiftwidth=2      " Número de espaços para cada nível de indentação
set expandtab          " Usa espaços em vez de tabulações

lua require('config.lazy')
lua require('config.lsp')
lua require('config.lsp-servers')
lua require('config.gitsigns')
lua require('keymaps')
lua require('tree')
lua require('statusline.main')
lua require('config.fold')
lua require('config.autotag-config')
lua require('config.colorscheme')
lua require('config.telescope')


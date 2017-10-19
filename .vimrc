"configuration for macvim and gvim
set guifont=Meslo\ LG\ L\ DZ\ Italic\ for\ Powerline:h18
set fu
highlight Cursor gui=inverse
set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

" Configuration file for vim
set modelines=0   " CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
syntax on
"set list lcs=tab:\¦\ 
set list lcs=tab:\┋\ 
set cursorcolumn
set autoindent
set ai           
set shiftwidth=4 
set tabstop=4
"set t_Co=256 
set ruler        
set backspace=2  
set ic          
set hlsearch     
set incsearch    
"set smartindent  
set confirm      
set history=200  
set cursorline   
set number       
:nohl
:set nowrap      
set mouse=a
"colo desert
set t_Co=256
syntax enable
let g:solarized_termtrans = 1                                                   
set background=dark
let g:despacio_Sunset = 1
colorscheme spring-night 
"hi CursorLineNr ctermfg=240 ctermbg=187"sollight
"hi Normal ctermbg=none
"hi CursorLine ctermfg=NONE ctermbg=243"birdy
"hi LineNr ctermbg=233 ctermfg=244"pic
"hi CursorLineNr ctermfg=White ctermbg=233"pic
"hi Cursorline ctermbg=233"pic
"hi Normal ctermbg=none
exe 'runtime autoload/' . expand('<SyntaxAttr>') . '.vim'
hi Error ctermbg=none guibg=NONE
hi cErrInParen ctermbg=none guibg=NONE
"for vim plugin
set nocompatible
filetype plugin on
execute pathogen#infect() 
" my own note.vim settings
au BufNewFile,BufRead *.note set filetype=note
" marker folding 
set foldmethod=marker 
"set foldmarker=#––,––#
nnoremap <space> za
"hi Folded ctermfg=NONE

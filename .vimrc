""""""""""""""""""""                                                                                                                                                                                       
".vimrc                                                                         
" Author: Aviraj Saha                                                           
"""""""""""""""""""""                                                           
                                                                                
"vundle settings for plugin management                                          
set rtp+=~/.vim/bundle/vundle                                                   
call vundle#rc()                                                                
                                                                                
"vim plugins                                                                    
if exists (':Bundle')                                                           
    Bundle 'git://github.com/scrooloose/nerdtree'                                                
    "command-t needs vim compiled with ruby support
    "Bundle 'git://git.wincent.com/command-t.git'
    Bundle 'git://github.com/mileszs/ack.vim'
    "asyncfinder needs vim to be compiled with python support
    "Bundle 'git://github.com/vim-scripts/asyncfinder.vim'
    Bundle 'git://github.com/kien/ctrlp.vim'
    Bundle 'git://github.com/bling/vim-airline'
    Bundle 'git://github.com/tomasr/molokai'
    Bundle 'git://github.com/itchyny/lightline.vim'
    Bundle 'git://github.com/vim-scripts/Mark'
"MRU recently opened file
"TComment
"FuzzyFinder
"LustyExplorer
"lightline

endif                                                                           

"plugin settings

let g:ackprg="ack"     "enable ack for searching                                                                           
let g:ack_default_options=1

let g:ctrlp_max_depth = 40 
let g:ctrlp_working_path_mode = ""
let g:ctrlp_max_files = 0 

"Open new tab and search for something
nmap <Leader>a :tab split: Ack ""<Left>      
                                                                                
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


"turns on the syntx highlighting                                                
syntax on                                                                       
"turns on incremental search                                                    
set incsearch                                                                   
"highlight search                                                               
set hlsearch                                                                    
"always displas last status line, even if only one window is displayed.         
set laststatus=2                                                                
"shows the row,column                                                           
set ruler                                                                       
"show partial command on last line of the screen                                
set showcmd                                                                     
"better command line completion                                                 
set wildmenu                                                                    
"use visual bell instead of beeping when something is wrong                     
set visualbell                                                                  
"set the title to the file currently opened.                                    
set title                                                                       
"set focus on the current line                                                  
set cursorline                                                                  
"set a column marker at coumn 80                                                
set colorcolumn=80                                  
" set a column highlighting 
" set cursorcolumn cursorline 


" Reduce tab to 4 spaces
" set tabstop=4


"--------------------------------------------------                             
"backups options  {{{ 1                                                         
"set undodir=~/.vim/tmp/undo//         "undo files"                              
set backupdir=~/.vim/tmp/backup//     "backups                                  
set directory=~/.vim/tmp/swap//       "swap file                                
set backup                            "enable backups                           
set noswapfile                                                                  
                                                                                
"---------------------------------------------------                            
"keyboard mapping {{{ 1                                                         
"---------------------------------------------------                            
"NERDTree Toggle
nnoremap <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeWinPos=0
"Keep the current directory updated as per the current file
autocmd BufEnter * lcd%:p:h
                                                                                
"---------------------------------------------------                            
"color options  {{{ 1                                                           
"sets the colour scheme as defined in colors/morning.vim                        
set t_Co=256
"let g:molokai_original=1
"colorscheme desert 

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme             = 'powerlineish'
"let g:airline_enable_branch     = 1
"let g:airline_enable_syntastic  = 1

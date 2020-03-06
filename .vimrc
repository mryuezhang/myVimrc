"================================ Vundle Config ================================                                                                     
set nocompatible              " be iMproved, required                           
filetype off                  " required                                        
set rtp+=~/.vim/bundle/Vundle.vim                                               
call vundle#begin()                                                             
Plugin 'VundleVim/Vundle.vim'                                                   
Plugin 'scrooloose/nerdtree'                                                    
Plugin 'vim-airline/vim-airline'                                                
Plugin 'vim-airline/vim-airline-themes'                                         
Plugin 'nathanalderson/yang.vim' "YANG syntax highlight                                                                
Plugin 'dracula/vim', {'name': 'dracula'}                                       
Plugin 'Yggdroot/indentLine'                                                    
Plugin 'jiangmiao/auto-pairs'                                                      
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'                                
Plugin 'ryanoasis/vim-webdevicons'                                              
call vundle#end()            " required                                         
filetype plugin indent on    " required                                         
"=============================== General Config ================================
set encoding=utf-8                                                              
set number                                                                      
set ruler                                                                       
set showmatch                                                                   
set autoread                                                                    
set wrap                                                                        
set linebreak                                                                   
set nolist                                                                      
set hls                                                                         
set tabstop=4                                                                   
set expandtab                                                                   
set shiftwidth=2                                                                
set textwidth=80
set cc=80                                                                
set laststatus=2                                                                
set backspace=indent,eol,start                                                  
set foldmethod=indent                                                           
set list                                                                        
set listchars=tab:>-                                                            
set t_Co=256                                                                    
set cursorline                                                                  
"=============================== Airline Config ================================
let g:airline_powerline_fonts = 1                                                                                           
"=================================== Key Maps ==================================
map <C-o> :NERDTreeToggle<CR>                                                   
map <C-c> :NERDTreeCWD<CR>                                                      
                                                                                
nmap <silent><Tab> :tabnext<CR>                                                 
nmap <silent><S-Tab> :tabprevious<CR>                                           
vmap <silent><Tab> :>> <CR> gv                                                  
vmap <silent><S-Tab> :<< <CR> gv                                                
                                                                                
map <MiddleMouse> <Nop>                                                         
imap <MiddleMouse> <Nop>                                                        
"================================= Colorscheme =================================
syntax on                                                                                                                           
colorscheme dracula                                                             
"============================== NERDTree Config ================================
autocmd vimenter * NERDTree                                                     
autocmd StdinReadPre * let s:std_in=1                                           
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif     
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")                  
  ¦ ¦ ¦ \ && b:NERDTree.isTabTree()) | q | endif                                
                                                                                
let NERDTreeWinSize=51                                                          
let NERDTreeMinimalUI=1                                                         
let g:NERDTreeFileExtensionHighlightFullName = 1                                
let g:NERDTreeExactMatchHighlightFullName = 1                                   
let g:NERDTreePatternMatchHighlightFullName = 1

set nocompatible                "don't use vi only vim

syntax enable

so ~/.vim/plugins.vim

set backspace=indent,eol,start   "Make the backspace work like all other edi    tors
let mapleader = ','              "The default is \, but a comma is better
set number                       "Lets activate line numbers
set autowriteall                 "Write files when you try change file
set complete=.,w,b,u 			 "Set complete current, windows, loaded and unloaded buffers
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4





set tabstop=4                    " when indenting with '>', use 4 spaces width
set autoindent
set cindent

"-----------Visual------------------"

colorscheme atom-dark 
set t_CO=256

"-----------Search------------------"

set hlsearch
set incsearch

"------------Split-Management------------------"

set splitbelow
set splitright

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

"------------Mappings------------------"

"Create a mapping to open the vimrc quickly
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"edit the snippet file
nmap <Leader>es :e ~/dotfiles/snippets/

"open up the plugins file for vim
nmap <Leader>pl :e ~/dotfiles/plugins.vim<cr>

"Add a simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"MAke NErdtree easier same as phpstorm cmd-1
nmap <Leader>1 :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-E> :CtrlPMRUFiles<cr>

nmap <Leader>f :tag<space>



"------------Plugins------------------"

"CtrlP Config"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"NERDTree Config"
let NERDTreeHijackNetrw = 0


"greplace.vim  Config"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


"vim-php-cs-fixer

let g:php_cs_fixer_level = "psr2"
let g:php_cs_fixer_php_path = "/usr/local/bin/php"


nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"/
"/ pdv
"/
"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

"nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
"/ Ultisnips
"/
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"------------Laravel-Commandss—————"

nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :e app/<cr>
nmap <Leader><Leader>v :e resources/views/<cr>



"--------------Auto-Commands—————"

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %  "automatically source vimrc wh    en writing
augroup END


function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>


vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


"Tips and Tricks 
"
" zz - press this to instanly center the line where the cursor is located

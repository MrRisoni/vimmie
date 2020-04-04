:let mapleader="/"
let g:sauce_path = "~/vimmie/sauces"
"let NERDTreeShowHidden=1

let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1


let g:php_cs_fixer_path = "~/backoffice/vendor/bin/php-cs-fixer"
" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.



autocmd FileType php set omnifunc=phpcomplete#CompletePHP




" Many dashes
com! Dashes <esc>8i-<esc>
nnoremap = :Dashes <Cr>


"JSX Beautify
" map <c-f> :call JsBeautify()<cr>


" Ctrl + B for PHP syntax check
map <C-B> :!php -l %<CR>



" Enable folding
"-- FOLDING --
" react support
let g:jsx_ext_required = 1

let g:vim_jsx_pretty_template_tags  = ['html', 'jsx']
let g:vim_jsx_pretty_colorful_config =1

set foldmethod=syntax "syntax highlighting items specify folds
" set foldcolumn=1 defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened
" Enable folding with the spacebar
nnoremap <space> za

set backspace=indent,eol,start
set hidden
filetype plugin indent on
syntax on
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" auto complete html
inoremap <buffer> > ></<C-x><C-o><C-y><C-o>%<CR><C-o>O


com! Idag :r !date
nnoremap = :Idag <Cr>


" ctrl + A ,select all text
map <C-a> <esc>ggVG<CR>

" json pretty print
com! BeautyJson :%!python -m json.tool
nnoremap = :BeautyJson <Cr>

" xml pretty print
com! BeautyXml :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

nnoremap = :BeautyXml <Cr>

" 
"
" mein getters setters
" com! GetSetPHP 

let g:auto_save = 1  " enable AutoSave on Vim startup

" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect


" horizontal columns
:set ruler


" Highlight line where the cursor is
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Vertical line numbers
:set number 

autocmd FileType php setlocal commentstring=/*\ %s



" File tree browser



autocmd vimenter * NERDTree


" nerd tree git status

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ncm2/ncm2'
Plug 'kien/ctrlp.vim' " Fuzzy file finder
Plug 'vim-syntastic/syntastic'
Plug 'joonty/vim-sauce'
Plug 'ap/vim-css-color'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/phpactor' ,  {'do': '/usr/local/bin/composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'tobyS/pdv'
Plug 'maksimr/vim-jsbeautify'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
call plug#end()


autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()


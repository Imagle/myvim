syntax enable
syntax on
"colorscheme koehler
set nu
set cin!
"set autoindent
":autocmd BufRead,BufNewFile *.cpp set expandtab tabstop=4 shiftwidth=4 autoindent smartindent
":autocmd BufRead,BufNewFile *.h set expandtab tabstop=4 shiftwidth=4 autoindent smartindent
":autocmd BufRead,BufNewFile *.c set expandtab tabstop=4 shiftwidth=4 autoindent smartindent
":autocmd BufRead,BufNewFile *.php set textwidth=2000 tabstop=4 expandtab shiftwidth=4 autoindent

set nocp
set ru
"搜索时高亮显示结果
set hls
set is
"显示行号
set number
"使用:e命令的时候 可选项预览
set wildmenu
"文件默认编码utf-8
set enc=utf-8
"文件默认格式unix
set ff=unix

"缩进为4个空格宽度
set tabstop=4
set expandtab
"2000个字符后自动折行
set textwidth=2000
"自动缩进
set autoindent
"鼠标捕捉
"set mouse=a
"打开语法高亮
syntax on
"显示编辑的文件

set comments=sl:/*,mb:*,ex:*/
"设置字典
autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
"默认配色为darkblue
color darkbluefix

" visual shifting (does not exit Visual mode)
" visual模式增大或减小缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv 

"映射F12键为行号的开关
map <F12> :set number!<CR>

nmap <C-N> :tabnext<cr>
nmap <C-P> :tabprevious<cr>

nnoremap <F5> :update<CR>
cnoremap <F5> <Esc>:update<CR>
inoremap <F5> <Esc>:update<CR>

nnoremap <C-c> :update<CR>
cnoremap <C-c> <Esc>:update<CR>
inoremap <C-c> <Esc>:update<CR>

" 打开php折叠
let php_folding = 1 
" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

filetype on
au BufNewFile,BufRead *.as set filetype=actionscript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

autocmd FileType python filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4

"设置javascriptlint
"autocmd FileType javascript set makeprg=/home/panweizeng/bin/js/jsl\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ '/home/panweizeng/bin/js/jsl.conf'\ -process\ %
autocmd FileType javascript set errorformat=%f(%l):\ %m
autocmd FileType javascript inoremap <silent> <F9> <C-O>:make<CR>
autocmd FileType javascript map <silent> <F9> :make<CR>



"""""""""""""""""""""""""""""
" TagList setting
"""""""""""""""""""""""""""""
"Exuberant ctags程序的位置
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
"在右侧窗口打开
let Tlist_Use_Right_Window=1
"只显示当前文件的tag
let Tlist_File_Fold_Auto_Close=1
"如果Taglist是最后一个窗口则退出vim
let Tlist_Exit_OnlyWindow = 1


""""""""""""""""""""""""""""""
" BufExplore settingr
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = \""BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 

"打开html|xml|xsl自动完成
"let g:closetag_html_style=1
"au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

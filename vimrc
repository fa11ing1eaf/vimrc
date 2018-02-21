let mapleader=";"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

" sysconfig 
set path=.
set path+=/usr/include/
set path+=/usr/include/linux/
set path+=/usr/local/include/
set path+=/usr/include/x86_64-linux-gnu/
set path+=/usr/lib/gcc/x86_64-linux-gnu/4.8/include/

if exists('$TMUX')
  set term=screen-256color
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch
set ignorecase smartcase
set nocompatible
set wildmenu

set backspace=indent,eol,start
set noswapfile
set showcmd

set list
set listchars=space:·,eol:♡,tab:>-
set iskeyword=@,48-57,_,192-255
set cmdheight=1



set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch
set nowrapscan

set cindent shiftwidth=4
set shiftwidth=4

set expandtab
set tabstop=4
set softtabstop=4

"set virtualedit=all

set wrap
set textwidth=0
set whichwrap=b,s,<,>,[,]
set showbreak=


set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix

autocmd BufWritePost $MYVIMRC source $MYVIMRC


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠

" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。
" 基于缩进或语法进行代码折叠
" manual,indent,expr,syntax,marker
set foldmethod=syntax
"set fdm=marker
set foldcolumn=4
" 启动 vim 时关闭折叠代码
set nofoldenable

" 自适应不同语言的智能缩进
" filetype indent on*/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai' "p1
"Plugin 'Valloric/YouCompleteMe' "p2
Plugin 'a.vim' "p3
Plugin 'scrooloose/nerdtree' "p4
Plugin 'scrooloose/nerdcommenter' "p5
Plugin 'majutsushi/tagbar' "p6
Plugin 'vim-scripts/indexer.tar.gz' "p7
Plugin 'derekwyatt/vim-fswitch' "p8
Plugin 'vim-scripts/DfrankUtil' "p9
Plugin 'vim-scripts/vimprj' "p10
Plugin 'kshenoy/vim-signature' "p11
Plugin 'dyng/ctrlsf.vim' "p12
Plugin 'nathanaelkane/vim-indent-guides' "p13
Plugin 'Lokaltog/vim-powerline' "p14
Plugin 'octol/vim-cpp-enhanced-highlight' "p15
Plugin 'terryma/vim-multiple-cursors' "p16
Plugin 'fholgado/minibufexpl.vim' "p17
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
"Plugin 'derekwyatt/vim-protodef'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'

call vundle#end()

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <Leader>y "+y
nmap <Leader>p "+p

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>

nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

nmap <Leader>M %
nnoremap <Leader><space> zA
nnoremap <Leader>o :noh<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p1
" molokai
set background=dark
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p2
" YouCompleteMe

"let g:ycm_global_ycm_extra_conf='./.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments=1

" YCM 补全菜单配色
" 菜单
 "highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"" 选中项
 "highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

 "YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"let OmniCpp_DeaultNamespaces = ["_GLIBCXX_STD"]
"inoremap <leader>; <C-x><C-o>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p3
" a.vim
nnoremap <Leader>A :A<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p4
" NerdTree
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=24
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p5
" Nerdcommenter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p6
" tagbar
let tagbar_left=1
nnoremap <Leader>ilt :TagbarToggle<CR>
let tagbar_width=32
let g:tagbar_compact=1
let g:tagbar_ctags_bin='/usr/bin/ctags' "sysconfig
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" sysconfig 
" 在你的项目里执行 ctags -R ./*
"ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q --language-force=c++
"set tags+=/usr/include/C++/4.2.1/stdcpp.tags
set tags+=./tags
set tags+=/usr/include/tags
"set tags+=/usr/include/c++/4.2.1/tags
set tags+=/usr/include/c++/4.8/tags

""" 设置 ctags 对哪些代码标识符生成标签
""let g:tagbar_type_cpp = {
     ""\ 'ctagstype' : 'c++',
     ""\ 'kinds'     : [
         ""\ 'c:classes:0:1',
         ""\ 'd:macros:0:1',
         ""\ 'e:enumerators:0:0', 
         ""\ 'f:functions:0:1',
         ""\ 'g:enumeration:0:1',
         ""\ 'l:local:0:1',
         ""\ 'm:members:0:1',
         ""\ 'n:namespaces:0:1',
         ""\ 'p:functions_prototypes:0:1',
         ""\ 's:structs:0:1',
         ""\ 't:typedefs:0:1',
         ""\ 'u:unions:0:1',
         ""\ 'v:global:0:1',
         ""\ 'x:external:0:1'
     ""\ ],
     ""\ 'sro'        : '::',
     ""\ 'kind2scope' : {
         ""\ 'g' : 'enum',
         ""\ 'n' : 'namespace',
         ""\ 'c' : 'class',
         ""\ 's' : 'struct',
         ""\ 'u' : 'union'
     ""\ },
     ""\ 'scope2kind' : {
         ""\ 'enum'      : 'g',
         ""\ 'namespace' : 'n',
         ""\ 'class'     : 'c',
         ""\ 'struct'    : 's',
         ""\ 'union'     : 'u'
     ""\ }
""\ }

""映射tagbar的快捷键
"map <F8> :TagbarToggle<CR>
"map <C-c> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p7
" indexer
"" 设置插件 indexer 调用 ctags 的参数
"" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
"" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

nmap <Leader>tn :tnext<CR>
nmap <Leader>tp :tprevious<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p8
" vim-fswitch
nmap <silent> <Leader>sw :FSHere<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p9
" DfrankUtil
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p10
" vimprj
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p11
" vim-signature
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn", 
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p12
"" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p13
" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p14
" vim-powerline
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p15
" vim-cpp-enhanced-highlight
syntax keyword cppSTLtype initializer_list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p16
" vim-multiple-cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-k>'
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p17
" minibufexpl.vim
map <Leader>bl :MBEToggle<cr>
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>
map <Leader>n :MBEbn<cr>
map <Leader>p :MBEbp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

""" <<

""" 模板补全
""" UltiSnips 的 tab 键与 YCM 冲突，重新设定
""let g:UltiSnipsSnippetDirectories=["mysnippets"]
""let g:UltiSnipsExpandTrigger="<leader><tab>"
""let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
""let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
""
"" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


"" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
""
"" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
""" 由接口快速生成实现框架

""" 成员函数的实现顺序与声明顺序一致
""let g:disable_protodef_sorting=1

""" <<

""" >>
""" 库信息参考
 
""" 启用:Man命令查看各类man信息
""" source $VIMRUNTIME/ftplugin/man.vim

""" 定义:Man命令查看各类man信息的快捷键
""" nmap <Leader>man :Man 3 <cword><CR>

"" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
""" 多文档编辑
 
""" 显示/隐藏 MiniBufExplorer 窗口
""map <Leader>bl :MBEToggle<cr>

""" buffer 切换快捷键
"map <C-Tab> :MBEbn<cr>
"map <C-S-Tab> :MBEbp<cr>

""" <<


""" >>
""" 环境恢复

""" 设置环境保存项
""set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

""" 保存 undo 历史。必须先行创建 .undo_history/
""set undodir=~/.undo_history/
""set undofile

""" 保存快捷键
"""map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
""map <leader>ss :mksession! my.vim<cr>

""" 恢复快捷键
"""map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
""map <leader>rs :source my.vim<cr>

""" <<
 
""" 设置快捷键实现一键编译及运行
""nmap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
""nmap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>

""" >>
""" 快速选中结对符内的文本
 
""" 快捷键
""map <SPACE> <Plug>(wildfire-fuel)
""vmap <S-SPACE> <Plug>(wildfire-water)

""" 适用于哪些结对符
""let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

""" <<

""" 调用 gundo 树
""nnoremap <Leader>ud :GundoToggle<CR>




"au BufNewFile,BufRead *.py
            "\ set tabstop=4|
            "\ set softtabstop=4|
            "\ set shiftwidth=4|
            "\ set textwidth=79|
            "\ set expandtab|
            "\ set autoindent|
            "\ set fileformat=unix|

"au BufNewFile,BufRead *.js,*.html,*.css
    "\ set tabstop=2|
    "\ set softtabstop=2|
    "\ set shiftwidth=2|

""au BufRead,BufNewFile *.py,*.c,*.h match BadWhitespace /\s\+$/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
syntax on


set showmode

"au VimEnter * execute "NERDTreeToggle"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"session 相关
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一键编译
"
set makeprg=make 

"nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>
nmap <Leader>m :!rm -f ./objs/nginx<CR>:wa<CR>:make<CR><CR>:cw<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缩写

iabbrev #b /*
iabbrev #e <CR><BackSpace>/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" {{{ ====================== Vundle ========================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'TagHighlight'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'szw/vim-ctrlspace'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'github-theme'
"Plugin 'freya'
"Plugin 'Lucius'
" Plugin 'rainbow.zip'
"Plugin 'Color-Scheme-Explorer'
"Plugin 'colorer-color-scheme'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'OmniCppComplete'
"Plugin 'code_complete-new-update'
Plugin 'ervandew/supertab'
Plugin 'Mark'
Plugin 'taglist.vim'
Plugin 'Tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-auto-save'
Plugin 'DoxygenToolkit.vim'
Plugin 'DoxyGen-Syntax'
Plugin 'sjl/gundo.vim'
Plugin 'TaskList.vim'
Plugin 'pthrasher/conqueterm-vim'
"Plugin 'tfnico/vim-gradle'
Plugin 'rhysd/vim-clang-format'
"Plugin 'othree/xml.vim'
Plugin 'a.vim'
Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-fugitive' " git tool
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'bbchung/clighter'

"Plugin 'xuzhezhaozhao/vim-potion'
"Plugin 'name5566/vim-bookmark'

Plugin 'saihoooooooo/glowshi-ft.vim'
Plugin 'panozzaj/vim-autocorrect'
"Plugin 'matlab.vim'
"Plugin 'MatlabFilesEdition'
Plugin 'Align.vim'

"Plugin 'mattn/emmet-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}} ==========================================================

" {{{ ==================== autocmd ============================
autocmd FileType vim :setlocal foldmethod=marker
" }}} ==========================================================

" {{{ =================== 基本设置 ==============================
set nocompatible " 推荐设置，使用vim模式，不使用vi模式
" set cindent "C格式的自动缩进
set autoindent
set smartindent
set nu "行号
set ruler " 显示状态栏标尺
set cc=81 " 标尺功能
set textwidth=0

" 放到.vim/ftplugin/cpp.vim c.vim 中
"set makeprg=g++\ -g\ -std=c++11\ % " quickfix参数

set tabstop=4
" set expandtab " 用 space 代替tab输入
set smarttab
set shiftwidth=4
set cursorline " 高亮显示当前行
set hlsearch " 高亮搜索结果
" set cc=80 " 标尺功能,高亮第80行
set anti
set guifont=YaHei\ Consolas\ Hybrid\ 12,Fixed\ 12 " 设置 gvim 的字体及大小
"set guifont=Menlo\ Regular\ 12,Fixed\ 12 " 设置 gvim 的字体及大小
set autochdir	" 自动设置当前编辑的文件所在路径为工作路径
set so=3 " 光标在还有3行时自动滚屏
set ignorecase smartcase " 搜索时默认不区分大小写，只有搜索关键字中出现一个大字母时才区分大小写
set incsearch  " 即时搜素
set showcmd " 命令模式下显示输入的命令
syntax on " 语法高亮
filetype plugin on " 文件类型检查
set backspace=indent,eol,start  " 设置backspace可以删除字符
set whichwrap=<,>,[,] " 具体查看 :help, 设置左右方向键在行头行尾是否转至上/下一行

" set foldenable " 开始折叠
" 按 space键 toggle 折叠块
nnoremap <space> za
set foldmethod=indent  " 设置折叠方式为按缩进折叠
set foldlevel=99
 "set foldopen=all " 设置为自动打开折叠 

set wildmenu " 增强版命令行，状态栏列出符合条件的命令
set wildignore=*.o,*~ " 补全时忽略指定后缀文件
set cmdheight=1 " 命令栏高度

set wrap " 一行太长时，自动显示为多行

"Set to auto read when a file is changed from the outside
if exists("&autoread")
set autoread
endif

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" always display status line
set laststatus=2
" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ \ \ 
set statusline+=%=
set statusline+=\ %l\ /\ %L\ \ \ \ \ \ \ %c\ \ \ \ \ \ \ 
set statusline+=%p%%\ \ 

" 高亮匹配 <>
set mps+=<:>
" }}} ==========================================================

" {{{ ============= 变量设置 ====================================
" 映射 <Leader>键  
let g:mapleader = ","
" }}} ===========================================================

" {{{ =================== 键盘映射 ==============================
" use space to toggle folding area

" 以下3行命令将ctrl-s映射为保存
nnoremap <C-S> :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>

" 放到 .vim/ftplugin/cpp.vim 中
 "Topcoder, compile
"nnoremap <F5> :w<CR>:make<CR>
"vnoremap <F5> <C-C>:w<CR>:make<CR><CR>
"inoremap <F5> <C-O>:w<CR>:make<CR><CR>

 "Topcoder, run
"nnoremap <C-F5> :!./a.out<CR>
"vnoremap <C-F5> <C-C>:!./a.out<CR>
"inoremap <C-F5> <C-O>:!./a.out<CR>

 "Topcoder submit
"nnoremap <F6> :!./fomat.sh<CR>
"vnoremap <F6> <C-C>:!./fomat.sh<CR>
"inoremap <F6> <C-O>:!./fomat.sh<CR>

" Topcoder format code
"  将4个空格替换为一个tab
" nnoremap <C-A><C-K><C-F> :%s/    /<tab>/g<CR><C-O>
" inoremap <C-K><C-F> <C-O>:%s/    /<tab>/g<CR><ESC><CR><C-O>i

" 一键启动Pyclewn调试
"nnoremap <F8> :Pyclewn<CR>:Cmapkeys<CR>:make<CR>:Cfile a.out<CR>
"vnoremap <F8> <C-C>:Pyclewn<CR>:Cmapkeys<CR>:make<CR>:Cfile a.out<CR>
"inoremap <F8> <C-O>:Pyclewn<CR>:Cmapkeys<CR>:make<CR>:Cfile a.out<CR>

" 生成tags文件
nnoremap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" 快速保存
nnoremap <leader>w :w<cr>

" 快速退出
nnoremap <leader>q :q!<CR>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" 上下移动一行或选定的区域
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" 插入匹配括号 （不用了，使用插件 auto-pairs）
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap { {}<LEFT>

" (不使用，有问题)输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
" inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
" inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
" inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a

" 用退格键删除一个左括号时同时删除对应的右括号
inoremap <BS> <ESC>:call RemovePairs()<CR>a

" tabs间切换
nnoremap <leader>l :tabnext<cr>
nnoremap <leader>h :tabpre<cr>

" edit .vimrc and save
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" go to line head and tail
nnoremap H ^
nnoremap L $

" wrap the word under the cursor with " or '
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>e
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>e

" wrap visual selection area with " or '
vnoremap <leader>" <esc>a"<esc>`<i"<esc>`>l
vnoremap <leader>' <esc>a'<esc>`<i'<esc>`>l

" grep the WORD under the cursor in current directory
"nnoremap <leader>g :execute "grep! -R" . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr><cr> 
" add ; to the end of line
nnoremap ; A;<esc>

" add pair to visual selection area
vnoremap ' <esc>`<i'<esc>`>la'<esc>
vnoremap " <esc>`<i"<esc>`>la"<esc>
vnoremap ( <esc>`<i(<esc>`>la)<esc>
vnoremap ) <esc>`<i(<esc>`>la)<esc>
vnoremap [ <esc>`<i[<esc>`>la]<esc>
vnoremap ] <esc>`<i[<esc>`>la]<esc>
vnoremap { <esc>`<i{<esc>`>la}<esc>
vnoremap } <esc>`<i{<esc>`>la}<esc>

" move in insert mode
inoremap <c-l> <c-o>l
"inoremap <c-h> <c-o>h " no use, ctrl H is binded to BackSpace key
inoremap <c-k> <c-o>k
inoremap <c-j> <c-o>j

" smart indentation
vnoremap < <gv
vnoremap > >gv

" preview html file
nmap <silent> <leader>v :!google-chrome-stable %<CR>

" }}} ===================================================

" {{{ ============== correct word =======================
iabbrev adn and
iabbrev teh the
iabbrev waht what
" }}} ===================================================
 
"{{{ ==== plugin setup =====
"
" {{{ ============= UltiSnips 插件设置 ==================
" 代码片段
set runtimepath+=~/.vim/ultisnips_rep "UltiSnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"}}}  ===================================================


"{{{ ============ tags  ===============================
" set tags+=/usr/include/tags 
" set tags+=~/.vim/tags/glib.tags
" set tags+=~/.vim/tags/libc.tags
" set tags+=~/.vim/tags/susv2.tags
 set tags+=~/.vim/tags/clean.tags 	" /usr/include 目录下删除不用的头文件之后生成的
 set tags+=~/.vim/tags/cpp.tags 		" 插件生成的 STL tags
"}}} ===================================================


"{{{ ============== code_complete update 版插件设置 ====
" let g:CodeCompl_Hotkey="<C-X>" " 设置补全热键
"}}} ===================================================


"{{{ ============= pyclewn 设置 =======================
set previewheight=6 " 设置调试窗口大小, 宽度为 8 
"}}} ==================================================


"{{{ ============== tagbar 设置 =========================
nnoremap <leader>b :TagbarToggle<cr>
let g:tagbar_left = 1 " 使其出现在左边
"let g:tagbar_right = 1 " 使其出现右边
set updatetime=100 " 根据光标位置自动更新高亮tag的间隔时间，单位为毫秒
let g:tagbar_width = 20 " 设置窗口宽度
" let g:tagbar_compact= 1 " 不显示顶部帮助信息，节省空间
let g:tagbar_show_linenumbers = 0 " 不显示行号
" let g:tagbar_expand = 1 " 自动扩展gui窗口
" autocmd VimEnter * nested :TagbarOpen  " 启动vim时自动打开tagbar
" autocmd VimEnter * nested :call tagbar#autoopen(1) " 若文件类型支持，则自动打开tagbar
" autocmd BufEnter * nested :call tagbar#autoopen(0) " 打开新标签时，自动打开tagbar
"}}} ===================================================


"{{{ ============= CtrlP 插件 ===================================
let g:ctrlp_map = '<c-p>' 	"  启动热键
let g:ctrlp_by_filename = 1 	" 通过文件名查找，0 是路径名加文件名

set wildignore+=*/dox/*,*/tmp/*,*.so,*.swp,*.zip    " MacOSX/Linux, 排除文件
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


let g:ctrlp_follow_symlinks = 1 	"显示链接文件


" MRU模式下不显示的文件
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*' " MacOSX/Linux, 
" let g:ctrlp_mruf_include = '\.cpp$\|\.h$' " 只记住的文件

"MRU模式下只显示工作目录下的文件
let g:ctrlp_mruf_relative = 1 

" 顺序即为<c-b>, <c-f>时出现的顺序
"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
"                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" let g:ctrlp_extensions = ['quickfix']
"}}} ===================================================


"{{{ ================== syntastic 插件设置 ==================
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-g -std=c++11 -Wall -DLEVELDB_PLATFORM_POSIX'

let g:syntastic_python_python_exec = '/usr/bin/python3.4'

" ignore some messages
" let g:syntastic_quiet_messages = {"regex": 'no such'}
"}}} ===================================================


"{{{ ================= YouCompleteme ====================
"设置全局配置文件的路径  
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  

" 解决与Unisnips插件的冲突
"let g:ycm_key_list_select_completion = ['<C-TAB>','<Down>']
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>','<Up>']
"let g:SuperTabDefaultCompletionType = '<C-Tab>'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
	if pumvisible()
	    return "\<C-n>"
	else
	    call UltiSnips#JumpForwards()
	    if g:ulti_jump_forwards_res == 0
	       return "\<TAB>"
	    endif
	endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" 对全C函数的补全快捷键
let ycm_key_invoke_completion = '<S-space>'


"设置error和warning的提示符，如果没有设置，ycm会以syntastic的  
" g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准  
" let g:ycm_error_symbol='>>'  
" let g:ycm_warning_symbol='>*' 


"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <c-[> :YcmCompleter GoToDefinitionElseDeclaration<CR>  

" 编译该文件，并显示错误框, 方便跳转
nnoremap <F4> :YcmDiags<CR>  

"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
set tags+=~/.vim/tags/cpp.tags 		" 插件生成的 STL tags

" 语法关键字补全 
let g:ycm_seed_identifiers_with_syntax = 1  

"不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf = 0

"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc = 0

"在注释中也可以补全  
let g:ycm_complete_in_comments = 1  

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

"输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion = 1

"查询ultisnips提供的代码模板补全,  就跟vs + Assist X一样
let g:ycm_use_ultisnips_completer = 1

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu	

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	

" 0: 关闭ycm的syntastic
let g:ycm_show_diagnostics_ui = 0
"}}} ====================================================


"{{{ ================== NerdTree ========================
" This option is used to specify which files the NERD tree should ignore. 
" It must be a list of regular expressions. 
" let NERDTreeIgnore=['\.vim$', '\~$']
" let NERDTreeIgnore=['.d$[[dir]]', '.o$[[file]]']
let NERDTreeIgnore=['.o$[[file]]']

" display line number
" let NERDTreeShowLineNumbers=1

" 指定文件排序方式, see more from help
" let NERDTreeSortOrder = []
" For example, if the option is set to: >
"    ['\.vim$', '\.c$', '\.h$', '*', 'foobar']
" <
" then all .vim files will be placed at the top, followed by all .c files then
" all .h files. All files containing the string 'foobar' will be placed at the
" end.  The star is a special flag: it tells the script that every node that
" doesnt match any of the other regexps should be placed here.
let NERDTreeSortOrder = ['\/$', '\.cpp$', '\.cc$', '\.h$', '*']

" 窗口宽度
let NERDTreeWinSize = 20

" 指定位置
"let NERDTreeWinPos = "left"
let NERDTreeWinPos = "right"

" 自动更新 
let NERDTreeAutoDeleteBuffer=1

" 若最后一个窗口是NerdTree窗口时，自动关闭它
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" nnoremap f :NERDTreeToggle<CR><C-L>
"}}} ====================================================


"{{{ =========== NERDTree 和 Tagbar 共用一个窗口 ========
" 不好用，容易出问题

function! ToggleNERDTreeAndTagbar() 
" let w:jumpbacktohere = 1

" Detect which plugins are open
if exists('t:NERDTreeBufName')
let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
else
let nerdtree_open = 0
endif
let tagbar_open = bufwinnr('__Tagbar__') != -1

" Perform the appropriate action
if nerdtree_open && tagbar_open
NERDTreeClose
TagbarClose
elseif nerdtree_open
Tagbar
wincmd J
wincmd k
wincmd L
elseif tagbar_open
NERDTree
wincmd J
wincmd k
wincmd L
else
NERDTree
Tagbar
wincmd J
wincmd k
wincmd L
endif

" 改变窗口宽度
vertical resize +45 

" Jump back to the original window
" for window in range(1, winnr('$'))
"     execute window . 'wincmd w'
"     if exists('w:jumpbacktohere')
"        unlet w:jumpbacktohere
"        break
"    endif
"endfor  

endfunction

nnoremap <leader>\ :call ToggleNERDTreeAndTagbar()<CR>

" 打开 vim 时自动打开 NERDTree 和 Tagbar
" autocmd vimenter * call ToggleNERDTreeAndTagbar()
" autocmd BufNewFile * call ToggleNERDTreeAndTagbar()

"}}} ======================================================

"{{{ ========== 打开NERDTree和Tagbar，分左右两列 ===========
function! ToggleNERDTreeAndTagbar2() 
let w:jumpbacktohere = 1

" Detect which plugins are open
if exists('t:NERDTreeBufName')
let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
else
let nerdtree_open = 0
endif
let tagbar_open = bufwinnr('__Tagbar__') != -1

" Perform the appropriate action
if nerdtree_open && tagbar_open
NERDTreeClose
TagbarClose
elseif nerdtree_open
Tagbar
elseif tagbar_open
NERDTree
else
NERDTree
Tagbar
endif

" Jump back to the original window
for window in range(1, winnr('$'))
    execute window . 'wincmd w'
    if exists('w:jumpbacktohere')
       unlet w:jumpbacktohere
       break
   endif
endfor  

endfunction

nnoremap <leader>f :call ToggleNERDTreeAndTagbar2()<CR>
"}}} ===================================================


"{{{ ==================== CtrlSF =======================
" 由于后端是 ag 处理，所以 .agignore 文件中可以定义忽略的文件类型，
" 并且会自动忽略.gitignore中定义的文件类型

nnoremap <c-d> :silent execute "CtrlSF " . shellescape(expand("<cword>"))<cr>

" 搜索结果在右端显示
" let g:ctrlsf_open_left = 0 
"}}} ===================================================

"{{{ ========== NERDCommenter =========================

"}}} ==================================================

"{{{ ========== Ctrl Space =============================
" 设置启动热键
let g:ctrlspace_default_mapping_key="<C-U>"

"let g:ctrlspace_use_tabline=1

" Colors of CtrlSpace for Solarized Dark
" (MacVim and Console Vim under iTerm2 with Solarized Dark theme)

" Based on Solarized TablineSel
" hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold

" Based on Solarized Tabline/TablineFill
" original Normal
" hi CtrlSpaceNormal   guifg=#839496 guibg=#073642 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
" tweaked Normal with darker background in Gui
" hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE

" Based on Title
" hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold

" Based on PmenuThumb
" hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8
"}}} ===================================================


"{{{ ============= color scheme ========================
" colorscheme freya
colorscheme neon 
"}}} ===================================================


"{{{ ============= DoxygenToolkit =======================
let g:doxygenToolkit_authorName="xuzhezhao"
let g:doxygenToolkit_briefTag_funcName="yes"

nnoremap <leader>df :Dox<CR>
nnoremap <leader>da :DoxAuthor<CR>
"}}} ===================================================


"{{{ ================= Doxygen-Syntax ==================
" 打开Doxgen语法高亮功能
let g:load_doxygen_syntax=1
"}}} ===================================================


"{{{ ================= vim-clang-format ==================
nnoremap <c-a><c-k><c-f> :ClangFormat<cr>

" format on buffer saving
let g:clang_format#auto_format = 0
let g:clang_format#auto_format_on_insert_leave = 0

" format command
let g:clang_format#command = '/usr/clang_3_3/bin/clang-format'
"}}} ===================================================


"{{{ ================= Eclim ==================
" work with YCM
let g:EclimCompletionMethod = 'omnifunc'
"}}} ===================================================


"{{{ ================ a.vim ===========================
" If this variable is true then a.vim will not alternate to a file/buffer which
" does not exist. E.g while editing a.c and the :A will not swtich to a.h
" unless it exists.
let g:alternateNoDefaultAlternate = 1

" Setup default search path
" by default
" let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc'
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:./include'
"}}} ===================================================

"{{{ ================== vim-markdown ===================
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
"}}} ===================================================


"{{{ ================= clighter =======================
"let g:clighter_libclang_file = '/usr/lib/x86_64-linux-gnu/libclang-3.5.so.1'
"let g:clighter_libclang_file='/usr/clang_3_3/lib/libclang.so'
let g:clighter_autostart = 0

"let g:clighter_window_size = -1 " whole buffer
let g:clighter_window_size = 0 " highlight current screen of window
"let g:clighter_window_size = 1

let g:clighter_realtime = 0

let g:clighter_rename_prompt_level = 1

let g:clighter_highlight_groups = ['clighterMacroInstantiation', 'clighterStructDecl', 'clighterClassDecl', 'clighterEnumDecl', 'clighterEnumConstantDecl', 'clighterTypeRef', 'clighterDeclRefExprEnum']

let g:clighter_cursorHL = 0
"}}} ==================================================

"{{{ ================= vim-bookmark =======================
let g:vbookmark_bookmarkSaveFile = $HOME . '/.vimbookmark'
" 禁用默认的按键绑定
let g:vbookmark_disableMapping = 1
"  使用新的快捷键
nnoremap <silent> mm :VbookmarkToggle<CR>
nnoremap <silent> mn :VbookmarkNext<CR>
nnoremap <silent> mp :VbookmarkPrevious<CR>
nnoremap <silent> ma :VbookmarkClearAll<CR>
"}}} ==================================================

"{{{ ================= glowshi-ft =======================
let glowshi_ft_no_default_key_mappings = 1
map f <plug>(glowshi-ft-f)
map F <plug>(glowshi-ft-F)
map t <plug>(glowshi-ft-t)
map T <plug>(glowshi-ft-T)
"map <unique>; <plug>(glowshi-ft-repeat)
"map <unique>, <plug>(glowshi-ft-opposite)
"
" highlight
let g:glowshi_ft_selected_hl_link = 'Cursor'
"let g:glowshi_ft_candidates_hl_link = 'Error'
"}}} ==================================================

"}}} =====

"{{{ ================== Help funtions =================
" From: http://amix.dk/vim/vimrc.html

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range


    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction



" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
function! RemovePairs()
	let l:line = getline(".")
	let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符

	if index(["(", "[", "{"], l:previous_char) != -1
		let l:original_pos = getpos(".")
		execute "normal %"
		let l:new_pos = getpos(".")

		" 如果没有匹配的右括号
		if l:original_pos == l:new_pos
			execute "normal! a\<BS>"
			return
		end

		let l:line2 = getline(".")
		if len(l:line2) == col(".")
			" 如果右括号是当前行最后一个字符
			execute "normal! v%xa"
		else
			" 如果右括号不是当前行最后一个字符
			execute "normal! v%xi"
		end

	else
		execute "normal! a\<BS>"
	end
endfunction

" 最大化窗口
function! Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

"}}} ===================================================

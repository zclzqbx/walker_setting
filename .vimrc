set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/walker/.vim/bundle'
Bundle 'command-t'
Bundle 'matrix.vim--Yang'
Bundle 'taglist.vim'
Bundle 'grep.vim'
Bundle 'lookupfile'
Bundle 'c.vim'
"Bundle 'stl.vim'
Bundle 'a.vim'
"Bundle 'cscope.vim'
"Bundle 'auto.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'winmanager'
Bundle 'STL-improved'
Bundle 'autoload_cscope.vim'
Bundle 'genutils'
Bundle 'OmniCppComplete'
Bundle 'autocomplpop'
"Bundle 'MiniBufExplorer'
"漂亮的状态栏
Bundle 'Lokaltog/vim-powerline'
"快速对齐
Bundle 'godlygeek/tabular'
"显示以及去除行尾空格
Bundle 'bronson/vim-trailing-whitespace'
"标记高亮
Bundle 'mbriggs/mark.vim'
"颜色符号显示对应颜色
Bundle 'gorodinskiy/vim-coloresque'
"git支持
Bundle 'Xuyuanp/nerdtree-git-plugin'
"buffer管理
Bundle 'minibufexpl.vim'

Plugin 'octol/vim-cpp-enhanced-highlight' "对c++语法高亮增强
Plugin 'kshenoy/vim-signature' "书签可视化的插件
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines' "书签行高亮
Plugin 'scrooloose/nerdcommenter' "多行注释，leader键+cc生成, leader+cu删除注释
Plugin 'kien/ctrlp.vim' "搜索历史打开文件，在命令行模式下按ctrl+p触发
Plugin 'Lokaltog/vim-easymotion' "快速跳转，按两下leader键和f组合
Plugin 'vim-scripts/ShowTrailingWhitespace.git' "高亮显示行尾的多余空白字符
Plugin 'vim-scripts/Solarized.git' "主题方案
Plugin 'nathanaelkane/vim-indent-guides.git' "缩进对齐显示
Plugin 'vim-scripts/indexer.tar.gz' "自动生成标签
Plugin 'vim-scripts/DfrankUtil' "indexer 依赖
Plugin 'vim-scripts/vimprj' "indexer 依赖
Plugin 'vim-scripts/Markdown'
Plugin 'tpope/vim-surround'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tagbar'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"set mapleader
let mapleader=","
set nu

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"使用vim的键盘模式
"set nocompatible

"不需要备份
set nobackup

"没有保存或文件只读时弹出确认
set confirm

"鼠标可用
set mouse=a

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
set cindent

"自动对齐
set autoindent

"智能缩进
set smartindent

"高亮查找匹配
set hlsearch

"背景色
set background=dark

"显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
set ruler

"去除vi的一致性
set nocompatible

"允许折叠
set foldenable
"""""""""""""""""设置折叠"""""""""""""""""""""
"
"根据语法折叠
"set fdm=syntax

"手动折叠
"set fdm=manual

"设置键盘映射，通过空格设置折叠
nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
""""""""""""""""""""""""""""""""""""""""""""""
"不要闪烁
set novisualbell

"启动显示状态行
set laststatus=2

"浅色显示当前行
autocmd InsertLeave * se nocul

"用浅色高亮当前行
autocmd InsertEnter * se cul

"显示输入的命令
set showcmd

"被分割窗口之间显示空白
set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/
set background=dark

"taglist
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_left_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序


"ctags
set tags=./tags;,tags


"nerdtree
" NERDTree settings
" 打开vim自动打开目录树
autocmd vimenter * NERDTree
" 关闭文件后，如果只剩目录树窗口，则直接关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
" F2键开启/关闭目录树
nmap cn :NERDTreeToggle<CR>
" 将目录树窗口设置在左边
let g:NERDTreeWinPos="left"
" 设置目录树窗口宽度为30
"let g:NERDTreeWinSize=30
" 显示目录树窗口行号
let g:NERDTreeShowLineNumbers=1

map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q <CR>

"let g:NERDTree_title='NERD Tree'
"let g:winManagerWindowLayout='NERDTree|TagList'
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction


"function! NERDTree_IsValid()
"    return 1
"endfunction


let Tlist_Auto_Open = 0

"在进入vim时自动打开winmanager
let g:AutoOpenWinManager = 0

" omnicppcomplete
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]


""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件

if filereadable("/home/walker/filenametags")                "设置tag文件的名字
	let g:LookupFile_TagExpr = '"/home/walker/filenametags"'
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>

"omnicppComplete
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot=1    "  打开  . 操作符
let OmniCpp_MayCompleteArrow=1  "打开 -> 操作符
let OmniCpp_MayCompleteScope=1  "打开 :: 操作符
let OmniCpp_NamespaceSearch=1   "打开命名空间
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DefaultNamespace=["std"]
let OmniCpp_ShowPrototypeInAbbr=1  "打开显示函数原型
let OmniCpp_SelectFirstItem = 2 "自动弹出时自动跳至第一个

nmap wm :WMToggle<cr>
map <leader><space> :FixWhitespace<cr>


"cscope
:cs add ~/Documents/cpp-ethereum/cscope.out ~/Documents/cpp-ethereum/
:cs add ~/Documents/BigTalkDesignPattern/cscope.out ~/Documents/BigTalkDesignPattern/
:set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-g>a :cs add cscope.out ./<cr>
nmap <C-g>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <C-g>d :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <C-g>r :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <C-g>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <C-g>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <C-g>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-g>i :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <C-g>c :cs find d <C-R>=expand("<cword>")<cr><cr>

"tagbar
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

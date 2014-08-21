"==========================================================================================
"" bundle插件管理
set nocompatible               "vi不兼容
filetype off                   "必须

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1 "自动启动
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"

Plugin 'scrooloose/nerdcommenter'
let mapleader=","   "设置<leader>键为,，比如,cc给当前行加入//注释，使用,cu恢复
nmap <C-S-j> ,cc
imap <C-S-j> <Esc>,cci<Left>
nmap <C-\> ,cu
imap <C-\> <Esc>,cui<Left>

Plugin 'vim-scripts/DoxygenToolkit.vim' "函数注释以及文件申明 :Dox 文件注释 :DoxAuthor
nmap <F12> :Dox<CR>
imap <F12> <Esc>:Dox<CR>
nmap <F11> 2G:DoxAuthor<CR>
imap <F11> <Esc>2G:DoxAuthor<CR>
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Luca Shin lucashen@tencent.com"
let g:DoxygenToolkit_licenseTag="My own license"

Plugin 'vim-scripts/taglist.vim'
nmap tl :Tlist<CR> "tl为快捷键
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Use_Right_Window=1  "在右侧窗口中显示taglist窗口
let Tlist_Exit_OnlyWindow=1 "如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

call vundle#end()            " required
filetype plugin indent on    "必须

" 简短插件命令
" " :PluginList          - list configured bundles
" " :PluginInstall(!)    - install(update) bundles
" " :PluginSearch(!) foo - search(or refresh cache first) for foo
" " :PluginClean(!)      - confirm(or auto-approve) removal of
" " unused，删除插件首先要在上面的行删掉插件配置，再运行
"
" "==========================================================================================

filetype on             "启用文件类型侦测
filetype plugin on      "针对不同的文件类型加载对应的插件

set nu
set smartindent         "启用智能对齐方式
set expandtab           "TAB转空格
set tabstop=4           "TAB为4个空格
set shiftwidth=4        "换行缩进4个空格
set smarttab            "一次backspace删除shiftwidth宽度的空格

set list
set listchars=tab:>-,trail:-    "设置tab为>---式样

set helplang=ch

set termencoding=utf-8  "Vim 所工作的终端的字符编码方式
set encoding=utf-8  "Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、消息文本等
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936    "Vim 启动时会按照它所列出的字符编码方式逐一探测

" "==========================================================================================
" 常用快捷键设置
nmap <C-Left> gT
nmap <C-Right> gt

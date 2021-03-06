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
map <C-S-j> ,cc
imap <C-S-j> <Esc>,cci<Left>
map <C-\> ,cu
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

"Plugin 'lilydjwg/colorizer'
"Plugin 'ap/vim-css-color'
"Plugin 'maksimr/vim-jsbeautify'
Plugin 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_open_new_file = 'v'

Plugin 'mattn/emmet-vim'

Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

Plugin 'fatih/vim-go'

Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_check_on_open = 1 " 打开时自动检查
let g:syntastic_check_on_wq = 1 " 保存时自动检查
let g:syntastic_auto_loc_list = 1 

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

syntax on               "启用语法高亮
set nu
set relativenumber
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
set pastetoggle=<F10>

" 对齐线
"set cc=80

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

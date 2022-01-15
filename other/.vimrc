"===================插件管理======================  

" 将vundle加入到runtime path  
set nocompatible              "关闭vi兼容  
filetype off                  "关闭文件类型侦测,vundle需要  
set rtp+=~/.vim/bundle/Vundle.vim  
let g:vundle_default_git_proto = 'git'
let fortran_dep_install=3

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
let g:plug_url_format = 'git@github.com:%s.git'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'git@github.com:junegunn/vim-easy-align.git'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
  
" plugin on GitHub redownPlugin 'christoomey/vim-tmux-navigator'
Plug 'VundleVim/Vundle.vim'  
Plug 'preservim/nerdtree' 
Plug 'valloric/youcompleteme'  
Plug 'Yggdroot/indentLine'
Plug 'jlanzarotta/bufexplorer' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'epheien/termdbg'
Plug 'joonty/vdebug'
Plug 'majutsushi/tagbar'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'rudrab/vimf90'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'davidhalter/jedi-vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ap/vim-css-color' " show the color
Plug 'plasticboy/vim-markdown'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'vifm/vifm.vim'

call plug#end()
  
filetype plugin indent on    " required  

"显示  
colorscheme 3dglasses         "选择配色方案  
set t_Co=256                  "可以使用的颜色数目  
" set number                    "显示行号  
set ruler                     "显示标尺  
set showcmd                   "显示输入的命令  
" set showmatch                 "高亮括号匹配  
" set matchtime=1               "匹配括号高亮的时间(十分之一秒)  
" set matchpairs={:},(:)        "匹配括号"{}""()"   
set hlsearch                  "检索时高亮匹配项  
set incsearch                 "边检索边显示匹配  
" set go-=T                     "去除gvim的toolbar  
let g:molokai_original = 1
let g:rehash256 = 1

" set command tt ':%s/s/t/g'
" cabbrev ss :%s/\s*[│├].*$//
" cabbrev tt :%s/▏/ /g

cabbrev gdb :set nu<CR>:packadd termdebug<CR>:Termdebug<CR>

" set smartindent   
set pastetoggle=<C-v>
set nu
set relativenumber

nnoremap <C-e> :NERDTreeFind<CR>
nnoremap <C-k> :NERDTreeToggle<CR>
" nnoremap <C-k> :e ./<CR>
" map <C-f> :BufExplorerHorizontalSplit<CR>
nnoremap <C-f> :BufExplorer<CR>
" nnoremap <C-k> <CR><Esc>:bd<CR><Esc>:BufExplorer<CR>
" map <C-j> :res +1<CR>
nnoremap <C-y> :vertical resize -1<CR>
nnoremap <C-u> :vertical resize +1<CR>
nnoremap <C-l> :resize +1<CR>
nnoremap <C-c> :foldclose<CR>
" map <C-u> :b#<CR>

" map <C-l> :TSendCommand p 
cabbrev ipdb :set nu<CR>:Termdbg ipdb3  
map <C-n> :TSendCommand n<CR>

" map <C-m> :Tagbar<CR>
" nnoremap <C-m> <Esc>:TlistToggle<CR>
nnoremap <C-x> <Esc>:set fdm=marker<CR>zm


" map <C-w> :vsplit<CR>

" fastfold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:python_fold = 1
let g:python3_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

"===================通用配置======================  
  
"文件搜索路径    
set path=.,/usr/include,,  
set mouse=a
  
" 控制  
set fileencodings=utf-8,gbk   "使用utf-8或gbk编码方式  
set encoding=utf8

syntax on                     "语法高亮  
set backspace=2               "退格键正常模式  
set whichwrap=<,>,[,]         "当光标到行首或行尾，允许左右方向键换行  
set autoread                  "文件在vim外修改过，自动重载        
set nobackup                  "不使用备份  
set confirm                   "在处理未保存或只读文件时，弹出确认消息     
set scrolloff=3               "光标移动到距离顶部或底部开始滚到距离  
set history=1000              "历史记录数  
set selection=inclusive       "选择包含最后一个字符  
" set selectmode=mouse,key      "启动选择模式的方式  
set selectmode=key      "启动选择模式的方式  
set completeopt=longest,menu  "智能补全,弹出菜单，无歧义时才自动填充  
set noswapfile                "关闭交换文件  
set hidden                    "允许在有未保存的修改时切换缓冲区  
  
"显示  
set t_Co=256                  "可以使用的颜色数目  
" set number                    "显示行号  
set ruler                     "显示标尺  
set showcmd                   "显示输入的命令  
set showmatch                 "高亮括号匹配  
set matchtime=1               "匹配括号高亮的时间(十分之一秒)  
set matchpairs={:},(:)        "匹配括号"{}""()"   
set hlsearch                  "检索时高亮匹配项  
set incsearch                 "边检索边显示匹配  
set go-=T                     "去除gvim的toolbar  
let g:molokai_original = 1
let g:rehash256 = 1

"格式  
set noexpandtab               "不要将tab转换为空格  
set shiftwidth=4              "自动缩进的距离,也是平移字符的距离  
set tabstop=4                 "tab键对应的空格数  
set autoindent                "自动缩进  
set smartindent               "智能缩进  

"===================按键映射======================  
  
"按键映射的起始字符  
let mapleader = ','               

nmap <Leader>x :tabe<Space>
nmap <Leader>, :. w !bash &<CR><CR>

function! Zoom1 () " {{{
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1
        tabclose
    else
        tab split
        set number
        set relativenumber
        Tagbar
        NERDTree
    endif
endfunction
nmap <leader><Space> :call Zoom1()<CR>
" }}}

function! Zoom () " {{{
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
        set mouse=a
    else
        tab split
        set nonumber
        set norelativenumber
        IndentLinesDisable
        set cursorline!
        set cursorcolumn!
        set mouse=a
    endif
endfunction
nmap <leader>l :call Zoom()<CR>
nmap <leader>k :set nu!<CR><Esc>:set nu!<CR><Esc>:set cursorline!<CR><Esc>:set cursorcolumn!<CR><Esc>
" nmap <leader>l :set nu!<CR><Esc>:call Zoom()<CR><Esc>:set nu!<CR><Esc>:set cursorline!<CR><Esc>:set cursorcolumn!<CR><Esc>
" }}}

function! Change_mode () " {{{
    let winnum = bufwinnr(g:TagList_title)
    if winnum == -1
        exit
        TlistToggle
    else
        TlistToggle
        exe 'silent! ' . 'botright vertical' . ' ' . 36 . 'split ' . '+buffer1'
        BufExplorer
    endif
endfunction
nmap <leader>m :call Change_mode()<CR>
" }}}

function! Open_buf () " {{{
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        split
        exe 'silent! ' . 'botright horizontal' . ' ' . 35 . 'split '
        BufExplorer
    endif
endfunction
nmap <leader>k :call Open_buf()<CR>
" }}}

let g:ConqueGdb_Leader = ';'

"使用Ctrl-l 和 Ctrl+h 切换标签页  
" nnoremap <C-l> gt              
nnoremap <c-h> gT  
  
"在行末加上分号  
nnoremap <silent> <Leader>; :<Esc><End>a<Space>;<Esc><Down>  
"保存  
nnoremap <C-s> :w<CR>  
"替换  
nnoremap <C-h> :%s/<C-R>=expand("<cword>")<CR>/<C-R>=expand("<cword>")<CR>  
 
"===================插件配置======================  
" vimtex
let g:tex_flavor = 'latex'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-n>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" c9s/perlomni.vim
filetype on
filetype plugin on
filetype indent on

" set vim-colors-solarized
syntax enable
" set background=dark
colorscheme mycolor
let g:solarized_bold      =   1     
let g:solarized_underline =   1       
let g:solarized_italic    =   1       
let g:solarized_contrast  =   "high"
let g:solarized_visibility=   "high"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2

" let python_highlight_all=1
syntax on

"-----NERDTree-----  
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeWinPos = "left"  
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>   
nnoremap <silent> <Leader>o :NERDTreeFind<CR>  
let NERDTreeShowHidden=1

"-----python--------
filetype plugin on
" 按 F5 执行当前 Python 代码"
" map <C-o> :call PRUN()<CR>
func! PRUN()
    exec "w" 
    if &filetype == 'python'
        exec "!./%"
    endif
endfunc

" python mode
" Minimal height of pymode quickfix window

" let previewheight=1
" call pymode#default('g:pymode_quickfix_maxheight', 3)

" Maximal height of pymode quickfix window
" call pymode#default('g:pymode_quickfix_minheight', 1)
" let g:pymode_quickfix_minheight = 1
" let g:pymode_quickfix_maxheight = 3
" let g:pymode_lint_cwindow = 0

"-----Powerline-----  
"set fillchars+=stl:-,stlnc:-
"let g:Powerline_symbols = 'compatible'  
" let g:Powerline_stl_path_style = 'filename'  "只显示文件名  
set laststatus=2
set fillchars=vert:▏"││┆│‖‖║║
" set fillchars+=stl:_
 
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#whitespace#enabled=1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='ayu_mirage'
" let g:airline_theme='hybridline'
" let g:airline_theme='lucius'
" let g:airline_theme='minimalist'
" let g:airline_theme='seoul256'
let g:airline_theme='monochrome'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
" set AirlineTheme='hybridline'

"-----Command-T-----  
let g:CommandTFileScanner = 'ruby'   "使用ruby作为文件浏览器  
let g:CommandTTraverseSCM = 'dir'    "根目录为执行vim时所在的目录    
"打开文件跳转  
nnoremap <silent> <Leader>f :CommandT<CR>  
  
"-----taglist-----  
" set tags=./tags,tags;$HOME
set tags=tags;
set autochdir

let Tlist_Show_One_File = 1           "只显示当前文件的taglist  
let Tlist_Exit_OnlyWindow = 1         "taglist是最后一个窗口时退出vim  
let Tlist_Use_Right_Window = 1         "在左侧窗口显示taglist  
let Tlist_GainFocus_On_ToggleOpen = 1 "打开taglist时，光标停在taglist窗口  
let Tlist_Auto_Update = 1             "自动更新  
" let Tlist_Close_On_Select = 1
" 打开标签浏览器  
nnoremap <silent><Leader>dt :Tlist<CR> 
" 重新生成标签   
nnoremap <silent><Leader>bt :!~/Myfiles/Tool/sh/ctags/hitags.sh<CR>  
" 高亮标签  
nnoremap <silent><Leader>ht :so tags.vim<CR>  
" map <C-m> :TlistToggle<CR>
" map <C-l> :<up><CR>

" tmux navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

"-----rain----
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"-----cscope-----  
"加载cscope库  
if filereadable("cscope.out")  
    cs add cscope.out  
endif  
set cscopequickfix=s-,c-,d-,i-,t-,e- "使用quickfix窗口显示结果  
set cst                              "跳转时也使用cscope库  
"打开引用窗口  
nnoremap <silent><Leader>cw :cw<CR>  
"重新生成索引文件  
nnoremap <silent><Leader>bc :!cscope -Rbq<CR>  
"s: 查找本C符号  
"g: 查找本定义  
"d: 查找本函数调用的函数  
"c: 查找调用本函数的函数  
"t: 查找本字符串  
"e: 查找本egrep模式  
"f: 查找本文件  
"i: 查找包含本文件的文件  
nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>  
nnoremap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>  
nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>  
  
"-----YouCompleteMe-----  
let g:ycm_server_python_interpreter= '/usr/bin/python3'  
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py' "默认配置文件  
let g:ycm_key_invoke_completion = '<C-Tab>'         "跨文件补全  
let g:ycm_confirm_extra_conf = 1                    "关闭加载配置文件提示  
let g:ycm_cache_omnifunc = 0                        "关闭补全缓存  
let g:ycm_enable_diagnostic_signs = 1               "关闭诊断提示符  
let g:ycm_enable_diagnostic_highlighting = 1        "关闭诊断高亮  
"let g:ycm_show_diagnostics_ui = 0                   "关闭诊断ui  
let g:ycm_min_num_of_chars_for_completion = 2       "n字符开始自动补全  

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }

"获取变量类型  
nnoremap <silent><Leader>yt :YcmCompleter GetType<CR>  
"跳转定义或声明  
nnoremap <silent><Leader>yg :YcmCompleter GoTo<CR>  
"跳转包含文件  
nnoremap <silent><Leader>yi :YcmCompleter GoToInclude<CR>  
"打开诊断信息  
nnoremap <silent><Leader>yd :YcmDiags<CR>  
  
"-----EasyGrep-----  
let EasyGrepMode = 2        "根据文件类型搜索相应文件  
let EasyGrepRecursive = 1   "递归搜索  
let EasyGrepCommand = 1     "使用grep  
let EasyGrepJumpToMatch = 0 "不要跳转  

set fdm=marker
" :colorscheme pablo
set foldmethod=marker
" set foldmethod=indent
" set nu!
set tabstop=2
" set autoindent
set shiftwidth=4
hi Folded guibg=black guifg=grey40 ctermfg=160 ctermbg=none
hi FoldColumn guibg=black guifg=black ctermfg=4 ctermbg=9
" hi VertSplit term=underline cterm=underline guifg=grey50 guibg=#c2bfa5
" hi VertSplit ctermfg=black ctermbg=none term=reverse cterm=reverse guifg=black guibg=black
hi VertSplit ctermfg=black ctermbg=red guifg=black guibg=black

let mapleader = "."            
nmap <leader>z :NERDTreeToggle<cr>
" nmap <Leader>; :exec '!openfile "'.getline('.').&path.'"' <CR><CR>
nmap <Leader>; :exec '!note_open "'.getline('.').'" &'<CR><CR>
" nmap <Leader>, :. w !bash &<CR><CR>

" Optional, to show special NERDTree browser characters properly (e.g. on remote linux system)
let g:NERDTreeDirArrows=1

" Show bookmarks by default
let NERDTreeShowBookmarks=1
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeQuitOnOpen = 0

" slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{down-of}"}
let g:slime_python_ipython = 1

"indentLine
"let g:indentLine_char='▏'   "┆│
let g:indentLine_char_list = ['|', '¦', '┆', '┊','│','│','│','│','│','│','│','│','│','│','│','│','│','│']
let g:indentLine_enabled = 1
" let g:indentLine_first_char =' '              "设置对齐线的首字符
" let g:indentLine_showFirstIndentLevel = 1   "显示对齐线首字符
let g:indentLine_color_term = 239               "设置对齐线颜色
set tabstop=4         "设置 tab 的宽度
set softtabstop=4     "设置 删除 tab 的宽度
set shiftwidth=4      "设置 智能缩进的宽度
set expandtab         "设置 将 tab 转换为 4 个空格

set cursorline
set cursorcolumn
hi CursorLine cterm=underline ctermbg=none ctermfg=none
hi CursorColumn cterm=bold ctermbg=236 ctermfg=green

" Fold description {{{ "

" }}} Fold description "

" let g:dockertools_container_mapping = {'start':'ss'}
" let g:dockertools_container_mapping = {'exec':'ee'}

" Open *.pdf, .jpg, *.doc and other files with GUI applications (choose solution for your OS)
" Linux: open PDFs with xpdf
au BufRead *.pdf silent !xpdf %<.pdf 2>/dev/null &
" OS X: open PDFs with associated PDF viewer 
au BufRead *.pdf silent !open %<.pdf 2>/dev/null & 


" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 14
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

let g:vim_json_syntax_conceal = 0
let g:indentLine_concealcursor=""

let g:termdebug_wide = 73


" function! Buf_total_num()
"     return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
" endfunction
" function! File_size(f)
"     let l:size = getfsize(expand(a:f))
"     if l:size == 0 || l:size == -1 || l:size == -2
"         return ''
"     endif
"     if l:size < 1024
"         return l:size.' bytes'
"     elseif l:size < 1024*1024
"         return printf('%.1f', l:size/1024.0).'k'
"     elseif l:size < 1024*1024*1024
"         return printf('%.1f', l:size/1024.0/1024.0) . 'm'
"     else
"         return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
"     endif
" endfunction
" set statusline=%<%1*[B-%n]%*
" " TOT is an abbreviation for total
" set statusline+=%2*[TOT:%{Buf_total_num()}]%*
" set statusline+=%3*\ %{File_size(@%)}\ %*
" set statusline+=%4*\ %F\ %*
" set statusline+=%6*\ %m%r%y\ %*
" set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
"
" set statusline+=%8*\ %P\ %*
" " default bg for statusline is 236 in space-vim-dark
" hi User1 cterm=bold ctermfg=red ctermbg=none
" hi User2 cterm=None ctermfg=red ctermbg=none
" hi User3 cterm=None ctermfg=red ctermbg=none
" hi User4 cterm=bold ctermfg=red ctermbg=none
" hi User5 cterm=None ctermfg=red ctermbg=none
" hi User6 cterm=None ctermfg=red ctermbg=none
" hi User7 cterm=None ctermfg=red ctermbg=none
" hi User8 cterm=None ctermfg=red ctermbg=none
"
"
" --------easymotion:
"  <leader><leader>w 开启单词级（word）移动, 将高亮光标后可见区域所有单词。
"  <Leader><Leader>fo 增强的 fo 命令，将高亮光标后可见区域所有 o 字符。
nnoremap <C-x> ..w

set foldmethod=marker



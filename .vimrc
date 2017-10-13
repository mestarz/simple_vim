" 开启语法高亮
syntax enable  
syntax on  
" 在状态栏显示正在输入的命令
set showcmd

" 左下角显示当前Vim模式
set showmode

" 显示行号
set number

" 设置tab宽度  
set tabstop=2  

" 设置自动对齐空格数  
set shiftwidth=2

" 编辑的时候将所有的tab设置为空格(expandtab)  
set et

" 添加水平滚动条  
set guioptions+=b


set mouse=a             " 允许使用鼠标移动光标
set showmode            " 显示左下角状态行
set hlsearch            " 搜索时关键字高亮反白
set ruler               " 在右下角显示光标位置的状态行
set novisualbell        " 不要闪烁

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

"自动补全
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

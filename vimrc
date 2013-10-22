" &&&&&&&&&&&&&&&&&&& 基本配置 &&&&&&&&&&&&&&&&&&&
set nocompatible
set ruler
" 设置语法高亮
syntax enable
syntax on
" 设置折叠
set foldenable " 开启折叠
set foldmethod=syntax " 按照语法折叠
set backspace=indent,eol,start

syntax on
set number
set scrolloff=3
set sidescrolloff=5
set magic
set wrap
"set mouse=a
set hlsearch
set incsearch
set timeoutlen=350

set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent

" 显示输入的命令
set showcmd

" 找打文件结尾后定之查找
set nowrapscan

"关闭声音
set vb t_vb=

" 自动输入常用头文件
nmap <silent> <C-i> i#include <stdio.h><CR>#include <stdlib.h><CR>#include <string.h><CR>#include <unistd.h><CR>#include <errno.h><CR><CR>int main(int argc, char *argv[])<CR>{<CR>exit(0);<CR>}<Esc>8<S-g><S-a><CR>

"############## 插件管理 #######################
" 自动管理插件配置
execute pathogen#infect()

" powerline 配置
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'


" cscope 插件管理配置
" {
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	 " s 查找本 C 符号
	nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	" g 查找本定义
	nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	" c 查找调用本函数的函数
	nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	" t 查找本字符串
	nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	" e 查找本egrep 模式
	nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	" f 查找本文件
	nmap <C-_>f :cs find f <C-R>=expand("<cword>")<CR><CR>
	" i 查找包含本文件的文件
	nmap <C-_>i :cs find i ^<C-R>=expand("<cword>")<CR><CR>
	" d 查找本函数的调用函数
	nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"}

" quickfix 插件管理配置
nmap <F6> :cn<CR>
nmap <F7> :cp<CR>

nmap <silent> <F8> :WMToggle<cr>
let g:CommandTAcceptSelectionSplitMap='<CR>'

" 单词查找功能
nnoremap <silent> <F3> :Grep<CR>

" tagbar 插件配置
let g:tagbar_left=1
nmap <C-t> :TagbarOpen<CR>

" 按缩进折叠
"map <C-f> :set foldmethod=indent<CR>

" 快速打开buffer
map <C-b> :buffer 

" 设置智能补全 
filetype plugin on
filetype indent on
set completeopt=longest,menu


" ctrl+n 打开nerdtree
nmap <silent> <C-n> :NERDTree<CR>
imap <silent> <C-i> <C-x><C-o>
imap <silent> <C-a> <C-c>a@<C-c>yw9pa
imap <silent> <C-s> <C-c>a#<C-c>yw9pa
imap <silent> <C-d> <C-c>a$<C-c>yw9pa
imap <silent> <C-f> <C-c>a&<C-c>yw9pa




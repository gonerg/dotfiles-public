
scriptencoding utf-8    " vim 스크립트의 인코딩 설정
set encoding=utf-8    " vim 메모리 내에서 문자열 인코딩 설정
set fileencoding=utf-8    " 파일 저장시의 인코딩 설정
set number    " 줄번호 활성화

set showmatch   " 매칭되는 괄호 표시
syntax on   " 문법 하이라이트
filetype indent on  " 파일 타입에 따른 구문강조

" Indent
set autoindent    " 자동 들여쓰기 활성화, 새로운 줄 시작시 이전줄의 들여쓰기 수준 유지
set smartindent    " 코딩 언어를 고려한 들여쓰기 활성화
set cindent    " C 프로그래밍을 위한 들여쓰기 활성화

" Tab
set softtabstop=4    " tab 을 눌렀을 때 공백으로 채울 갯수 설정
set tabstop=4    " 탭 문자를 몇 개의 공백으로 표시할지 설정
set shiftwidth=4    " 자동 들여쓰기 시 사용할 공백의 수를 설정
"set wmnu    " 자동완성

set hlsearch    " 검색어 하이라이트를 활성화

set nobackup    " 백업 파일 생성을 비활성화

set title    " 창제목을 열린 파일 이름/상태로 표현

set ignorecase    " 검색시 대소문자 무시

set expandtab    " 탭을 공백으로 자동 변환
set smarttab    " 탭과 관련된 작업을 더 지능적으로 처리하도록 설정합니다. 예를 들어, 들여쓰기 시 shiftwidth 값을 사용합니다.

set cmdheight=1    " 명령줄의 높이를 한 줄로 설정
set laststatus=2    " 상태 표시줄을 항상 표시

set breakindent    " 줄이 화면 너비를 초과할 경우 들여쓰기를 유지하며 줄바꿈

set scrolloff=10    " 스크롤시 화면의 위쪽과 아래쪽에서 최소한 10줄의 여백을 유지하며 스크롤

colorscheme pablo    " pablo 테마 설정(임시)









call plug#begin()
  Plug 'preservim/nerdtree'    " NERDTree 사용을 위해 선언, 왼쪽 사이드메뉴로 폴더/파일 네비게이션
  "Plug 'nathanaelkane/vim-indent-guides'    " 문장 앞에 Indent Guide 라인 표시
  Plug 'Yggdroot/indentLine'
  "Plug 'ervandew/supertab'  " auto complete, 뭐가 다른지 모르겠음
  Plug 'mtdl9/vim-log-highlighting'
  "Plug 'fei6409/log-highlight.nvim'


call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>

" setup for Plug 'nathanaelkane/vim-indent-guides'
"nnoremap <C-i> :IndentGuidesToggle<CR>
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1


" setup for Plug 'Yggdroot/indentLine'
""let g:indentLine_color_term = 239    " Vim
""let g:indentLine_color_gui = '#A4E57E'    " GVim
""let g:indentLine_color_tty_light = 7 " (default: 4)    none X terminal
""let g:indentLine_color_dark = 1 " (default: 2)    none X terminal
""let g:indentLine_bgcolor_term = 100    " Background (Vim, GVim), 202
""let g:indentLine_bgcolor_gui = '#FFFF00'    " Background (Vim, GVim) #FF5F00

""let g:indentLine_color_term = 0
let g:indentLine_color_term = 22
let g:indentLine_bgcolor_term = "NONE"
"let g:indentLine_color_gui = '#3A4151'   " '#3b4252'
let g:indentLine_bgcolor_gui = 'NONE'

nnoremap <C-i> :IndentLinesToggle<CR>


" listchar=trail is not as flexible, use the below to highlight trailing
" whitespace. Don't do it for unite windows or readonly files
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
augroup MyAutoCmd
  autocmd BufWinEnter * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+$/ | endif
  autocmd InsertEnter * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+\%#\@<!$/ | endif
  autocmd InsertLeave * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+$/ | endif
  autocmd BufWinLeave * if &modifiable && &ft!='unite' | call clearmatches() | endif
augroup END


" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


filetype plugin indent on
syntax enable

if system("ps -o tty= -p $$") =~ "ttyv"
  colorscheme desert
else
  " 256bit terminal
  set t_Co=256
  let g:base16_scheme = $BASE16_SCHEME
  let g:base16_scheme_path = '~/.vim/bundle/base16-vim/colors/base16-' . g:base16_scheme . '.vim'
  if filereadable(expand(g:base16_scheme_path))
    let g:base16colorspace=256  " Access colors present in 256 colorspace
    exe 'colorscheme base16-' . g:base16_scheme
  else
    colorscheme molokai
    " molokai: for 256 colors
    let g:rehash256 = 1
  endif
endif

if has('gui_running')
  " set guifont=Inconsolata-dz\ for\ Powerline:h11
  set guifont=Source\ Code\ Pro\ Medium\ 11
  " set transparency=5        " set transparent window
  " set guioptions=egmrt  " hide the gui menubar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=e  "remove GUI tab-bar, run `set go+=m to enable`
  set guioptions-=m  "remove GUI menu bar
else
  " Spelling highlights. Use underline in term to prevent cursorline highlights
  " from interfering
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=red
  hi clear SpellCap
  hi SpellCap cterm=underline ctermfg=blue
  hi clear SpellLocal
  hi SpellLocal cterm=underline ctermfg=blue
  hi clear SpellRare
  hi SpellRare cterm=underline ctermfg=blue
endif


" Tell Vim to use dark background
set background=dark

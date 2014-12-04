let g:ycm_register_as_syntastic_checker = 1
let g:ycm_cache_omnifunc = 0
set completeopt-=preview

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#documentation_command = "<leader>h"
let g:jedi#usages_command = "<leader>u"
let g:SuperTabLongestHighlight = 0

" https://github.com/davidhalter/jedi-vim/issues/179
let g:jedi#popup_select_first = 0
let g:jedi#auto_vim_configuration = 1
" au FileType python setlocal completeopt-=preview " The reason to deactivate jedi#auto_vim_configuration
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1

let g:ycm_key_invoke_completion = '<C-n>'
let g:ycm_filetype_blacklist =
      \ get( g:, 'ycm_filetype_blacklist',
      \   get( g:, 'ycm_filetypes_to_completely_ignore', {
      \     'notes' : 1,
      \     'markdown' : 1,
      \     'text' : 1,
      \     'unite' : 1,
      \     'vimfiler' : 1,
      \     'nerdtree' : 1,
      \ } ) )

" Or instead of gggqG, use <Visual>gq to format only the highlighted lines 
" (i.e. gq after using shift-v + cursor moves to set up a linewise visual 
" area). 
" https://groups.google.com/d/msg/vim_use/XzObYsZpUrQ/svirOL-N0DUJ

let g:pymode_virtualenv=1 " Auto fix vim python paths if virtualenv enabled        
let g:pymode_folding=1  " Enable python folding 
let g:pymode_rope = 0
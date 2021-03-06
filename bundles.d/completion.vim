NeoBundleLazy 'Shougo/neocomplete.vim', {
  \ 'autoload' : { 'insert' : '1' },
  \ 'disabled' : (!has('lua') || has('nvim'))
  \ }

NeoBundleLazy 'Shougo/deoplete.nvim', {
  \ 'depends': 'Shougo/context_filetype.vim',
  \ 'autoload': { 'insert' : '1' },
  \ 'disabled' : !has('nvim')
  \ }

NeoBundleLazy 'Shougo/context_filetype.vim', { 'autoload' : { 'function_prefix' : 'context_filetype' } }

NeoBundleLazy 'Shougo/echodoc', {
    \ 'lazy' : 1,
    \ 'autoload' : {
    \ 'insert' : 1
    \ }
\ }

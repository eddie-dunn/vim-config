if neobundle#tap('neosnippet.vim')
  function! neobundle#hooks.on_source()
    " Enable snipMate compatibility feature.
    let g:neosnippet#enable_snipmate_compatibility = 1

    " Tell Neosnippet about the other snippets
    let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
  endfunction

  call neobundle#untap()
endif

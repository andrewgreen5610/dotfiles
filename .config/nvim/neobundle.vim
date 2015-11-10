" runtime plugin/install_vundle.vim
" call AutoInstallVundle()

filetype off "see: https://github.com/spf13/spf13-vim/pull/128
if has ('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.config/nvim/bundle/'))
runtime bundles.vim
call neobundle#end()

" To be fair, caching saves 0.02 seconds (ssd?)
" Not really worth it
" if neobundle#has_cache()
"     NeoBundleLoadCache
" else
"     runtime bundles.vim
"     NeoBundleSaveCache
" endif
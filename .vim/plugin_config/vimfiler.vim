" Disable netrw.vim
let g:loaded_netrwPlugin = 1

" Use vimfiler as default explorer
let g:vimfiler_as_default_explorer = 1

" Enable file operation commands.
let g:vimfiler_safe_mode_by_default = 0

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

" Don't jump to first child when opening directory
let g:vimfiler_expand_jump_to_first_child = 0

" Restore file when opening vimfiler
let g:vimfiler_restore_alternate_file = 1

" call custom vimfiler settings when creating buffer
autocmd! FileType vimfiler call s:my_vimfiler_settings()

function! s:my_vimfiler_settings()
    setlocal nobuflisted

    " Use enter to toggle tree + open files
    nmap <buffer><expr> <Cr> vimfiler#smart_cursor_map(
                \ "\<Plug>(vimfiler_expand_tree)",
                \ "\<Plug>(vimfiler_edit_file)")

    " Only close buffer, not whole window
    nmap q <buffer> <Plug>(vimfiler_close)
endfunction

" Create a new VimFiler instance based on the current window
function! VimFilerUnique()
    exec 'VimFiler -simple -buffer-name=window-' . winnr()
endfunction

nmap <silent> <Plug>VimFilerUnique :call VimFilerUnique()<cr>

" Vinegar-like keybinding
nmap - <Plug>VimFilerUnique

if !exists(":NERDTree")
    nmap <leader>nt <Plug>VimFilerUnique
endif


" Set up Pathogen for Vim modules
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Configuration
setlocal tabstop=4

" vim-markdown settings
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
let g:vim_markdown_toc_autofit = 1

" Goyo for distraction free editing
noremap <c-g> :Goyo<CR>
imap <c-g> <C-O><c-g>

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Set up for word processing Markdown files
function! WordProcessorMode()

    iab xtime <c-r>=strftime("%H:%M:%S")<cr>
    iab xdate <c-r>=strftime("%m/%d/%y %H:%M:%S")<cr>

    let g:pencil#wrapModeDefault = 'soft'
    setlocal expandtab
    setlocal tabstop=4
    setlocal shiftwidth=4
    map j gj
    map k gk
    set complete+=s
    setlocal nonumber
    hi FoldColumn ctermbg=Black ctermfg=Black
    call pencil#init()
endfunction

com! WP call WordProcessorMode()
autocmd FileType markdown,md,rst WP


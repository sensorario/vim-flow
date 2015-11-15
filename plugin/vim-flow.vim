" ------------------------------------------------------------------------------
" Vim Flow                                                               {{{
"
" Author: Simone Gentili <sensorario@gmail.com>
"
" Description:
" The git flow directly from vim
"
" Requires: Vim, Git
"
" License: MIT
"
" }}}
" ------------------------------------------------------------------------------

command! VimFlowInfo :call g:VimFlowInfoFunction()<CR>

function! VimFlowInfoFunction()
    exec '!clear'
    echo 'A Vim plugin for the git flow'
endfunction


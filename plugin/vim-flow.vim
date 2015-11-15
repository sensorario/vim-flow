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

command! VimFlowInfo :call g:VimFlowInfo()<CR>

function! VimFlowInfo()
    exec '!clear'
    echo 'A Vim plugin for the git flow'
endfunction


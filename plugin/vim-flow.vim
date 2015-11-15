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

command! VimFlowInfo :echo "A Vim plugin for the git flow"

command! VimFlowFeature :call VimFlowFeatureFunction()<CR>
function! VimFlowFeatureFunction()
    let feature = input('Feature: ')
    let feature_name = 'feature/' . feature
    let command = ':!git checkout -b ' . feature_name . ' dev'
    exe command
endfunction

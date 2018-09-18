" syntax/Kevinsfile.vim

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

runtime! syntax/groovy.vim
unlet! b:current_syntax
syn include @Groovy syntax/groovy.vim

syn keyword kf_keyword_lvl1 compliments contained
syn keyword kf_keyword_lvl1 insults contained
syn keyword kf_keyword_lvl2 shirt contained
syn keyword kf_keyword_lvl2 pants contained
syn keyword kf_keyword_lvl2 face contained
syn keyword kf_keyword_lvl2 shoes contained

syn region lvl1 matchgroup=lvl start=/{/ end=/}/           contains=@Groovy,lvl2,kf_keyword_lvl1
syn region lvl2 matchgroup=lvl start=/{/ end=/}/ contained contains=@Groovy,lvl1,kf_keyword_lvl2

hi kf_keyword_lvl1 ctermfg=51 guifg=cyan
hi kf_keyword_lvl2 ctermfg=30 guifg=darkcyan
hi link lvl1 Delimiter
hi link lvl2 Delimiter

let b:current_syntax = "Kevinsfile"

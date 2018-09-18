" syntax/Kevinsfile.vim

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn include @Groovy syntax/groovy.vim

syn keyword kf_keyword_lvl1 compliments contained
syn keyword kf_keyword_lvl1 insults contained
syn keyword kf_keyword_lvl2 shirt contained
syn keyword kf_keyword_lvl2 pants contained
syn keyword kf_keyword_lvl2 face contained
syn keyword kf_keyword_lvl2 shoes contained

syn region lvl1 matchgroup=lvl1 start=/{/ end=/}/           contains=@Groovy,lvl2,kf_keyword_lvl1
syn region lvl2 matchgroup=lvl2 start=/{/ end=/}/ contained contains=@Groovy,lvl1,kf_keyword_lvl2

hi link kf_keyword_lvl1 Include
hi link kf_keyword_lvl2 Constant
hi link lvl1            Conditional
hi link lvl2            Statement

let b:current_syntax = "Kevinsfile"

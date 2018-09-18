" syntax/Kevinsfile.vim

syn influce @JSON syntax/json.vim

syn keyword kf_keyword_lvl1 compliment contained
syn keyword kf_keyword_lvl1 insult contained
syn keyword kf_keyword_lvl2 shirt contained
syn keyword kf_keyword_lvl2 pants contained
syn keyword kf_keyword_lvl2 face contained
syn keyword kf_keyword_lvl2 shoes contained

syn region lvl0 start=/\%^/ end=/\%$/           contains=@JSON,lvl1
syn region lvl1 start='{'   end='}'   contained contains=@JSON,lvl2,kf_keyword_lvl1
syn region lvl2 start='{'   end='}'   contained contains=@JSON,kf_keyword_lvl2

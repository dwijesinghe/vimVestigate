syntax match resultListing "\d\+\.\sIn.*\:"
syntax match resultCount "\d\+\soccurences\sfound"

hi def link resultListing String 
hi def link resultCount String 

let b:current_syntax= 'vimvestigator'

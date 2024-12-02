1,$s/^\(\d\+\)\s\+\(\d\+\)$/A\1\rB\2/
sort
let @q='/^A\d\+$\n^BjG$dgg$p'
silent execute 'normal @q'
silent 1,$s/^A/-/
silent 1,$s/B/+/
silent 1,$s/^-\(\d\+\)+\(\d\+\)$/\=-str2nr(submatch(1))+str2nr(submatch(2))/
silent g/^$/d
1,$-1s/$/+/
execute 'normal vipJ'
s/ //g
s/+-/+/ge
execute 'normal ^"aDi=a'

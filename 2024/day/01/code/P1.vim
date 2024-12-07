" 2086478
silent %s/^\(\d\+\)\s\+\(\d\+\)$/A\1\rB\2/
sort
execute 'normal /\%(^A\d\+$\n^\)\@<=BG$dggep'
g/^$/d
silent %s/^A\(\d\+\)B\(\d\+\)$/\=str2nr(submatch(1))-str2nr(submatch(2))/
silent %s/^-//
silent 1,$-1s/$/+/
execute 'normal vipJ'
:s/ //g
execute 'normal ^"aC=a'

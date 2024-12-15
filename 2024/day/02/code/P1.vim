" 246
silent %s/\(\d\+\)\@<= \(\d\+\)\@=/(\1 \2)/g
silent %s/^\(\d\+\)( \(\d\+\))/\1(\1 \2)/
silent %s/\%((\)\@<=\(\d\+\) \(\d\+\)\%()\)\@=/\=str2nr(submatch(1))-str2nr(submatch(2))/g
silent g/\((-\d\+)\d\+(\d\+)\|(\d\+)\d\+(-\d\+)\)/d
silent g/(-\?[^1-3])/d
silent %s/^.*$/1/
silent 1,$-1s/$/+/
silent execute 'normal vipJ'
silent s/ //g
silent execute 'normal ^C="'

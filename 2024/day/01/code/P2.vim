" 24941624
silent %s/\s\+/\r/
sort
execute 'normal /^\(\d\+\)\($\n^\1\)\+'
while search('^\(\d\+\)\($\n^\1\)\+') > 0
  execute 'normal gnJ'
endwhile
v/^\(\d\+\) \1/d
silent %s/ \d\+/ 1/g
silent %s/\%(\<1\| \)\@<= /+/g
silent %s/ /\*(/
silent %s/$/)/
silent 1,$-1s/$/+/
execute 'normal vipJ'
silent %s/ //g
execute 'normal ^"aC=a'

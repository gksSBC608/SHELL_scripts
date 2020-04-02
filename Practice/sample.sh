str="first usr1, second url2, third url3"
if [[ $str =~ (second )([^,]*) ]]; then echo "match: '${BASH_REMATCH[0]}'"; else echo "no match found"; fi
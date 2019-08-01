cat /etc/passwd | egrep -v '^(#|$)' | sed -n 'p;n' | rev | sed -e "s/:/ /g" | awk '{ print $NF }' | sort -dr | sed -n "$FT_LINE1"','"$FT_LINE2"'p' | tr "\n" ","| sed -e "s/,/, /g" | sed -e 's/..$/./'

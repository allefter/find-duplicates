Remove duplicates

find "$@" -type f  \( -iname "*.jpg" -or -iname "*.mov"  -or -iname "*.m4v" -or -iname "*.mp4" -or -iname "*.avi" \)  -printf "%s%f ; %p\n" | sort -n | uniq -w 16 -d | cut -d ";" -f 2 |  sed -r 's/^[0-9a-f]*( )*//;s/([^a-zA-Z0-9./_-])/\\\1/g;s/(.+)/rm \1/' > rem_duplicates.sh

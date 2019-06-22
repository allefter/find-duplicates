find "$@" -type f  \( -iname "*.jpg" -or -iname "*.mov"  -or -iname "*.m4v" -or -iname "*.mp4" -or -iname "*.avi" \)  -printf "%s%f ; %p\n" | sort -n | uniq -w 16 -D

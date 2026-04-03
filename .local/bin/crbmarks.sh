#!/bin/sh

bmarkfile="$(mktemp)"
cat "$1" |
	sed 's/\([0-9]*\) \([0-9]*\) \(.*\)/BookmarkBegin\nBookmarkTitle: \3\nBookmarkLevel: \1\nBookmarkPageNumber: \2\n/' \
	> "$bmarkfile"

pdftk "$2" update_info "$bmarkfile" output "$3"

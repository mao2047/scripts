#! /bin/zsh
#remove the id from youtube-dl downloads
for f in ./* ; do ext=${f:e}; name=${f:t}; echo $name | sed 's/\(.*\)\(-.*\)/mv \"&\" \"\1.'"$ext"'\"/' | zsh; done


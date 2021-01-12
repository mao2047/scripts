#! /bin/zsh
for f in *; do name=${f:t:r}; ext=${f:e}; ffmpeg -i $f -vcodec copy -an $name"0."$ext ; rm $f; done

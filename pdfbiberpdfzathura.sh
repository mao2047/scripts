#! /bin/zsh
# This script search of a project and compile it with bibliography

project=$(du -a ~/dp/TeX/* | awk '$2 ~ /\.tex$/ {print $2}' | fzf) \
	; echo "$project" ; dirr=$(dirname $project) ; cd "$dirr" \
	; pro=$(echo $project | cut -f 1 -d '.' | cut -d'/' -f7-) \
	; pdflatex $project ; biber $pro ; pdflatex $project ; zathura $pro.pdf &

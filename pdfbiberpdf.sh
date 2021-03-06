#! /bin/zsh
# This script search of a project and compile it with bibliography

project=$(du -a ~/dp/TeX/* | awk '$2 ~ /\.tex$/ {print $2}' | fzf) \
	; echo "$project" ; cd "$dirr" \
	; pdflatex $project ; zathura $project ; fg

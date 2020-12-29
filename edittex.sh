#! /bin/zsh
# This script search of a project to edit
project=$(du -a ~/dp/TeX/* | awk '$2 ~ /\.tex$/ {print $2}' | fzf) && nvim $project 

#! /bin/zsh
# This script search of a project to edit
project=$(du -a ~/dropbox/TeX/* | awk '$2 ~ /\.tex$/ {print $2}' | fzf) && vim $project 
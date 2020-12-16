#! /bin/zsh
#compila el coumento, luego la bibliografia y de nuevo el documento tex
read  "?generar proyecto: " project
if [[ -a $HOME/dropbox/TeX/$project ]]; then	
	cd $HOME/dropbox/TeX/$project &&
	pdflatex $project && biber $project && pdflatex $project 
else
	echo "No existe el projecto $project"
fi

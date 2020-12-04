#! /bin/zsh
##########################################################
# script que renombra un archivo y lo mueve a la biblioteca
# por mao2047 
# fzf, sed y mv
# $tmp - guarda la ruta
# $ext - guarda la extensión
##########################################################
loop=true; while $loop; do
file1=$(fzf); file2=${file1:t}; tmp=${file1:r}; \
print "Mover a: \n | f: filosofía | s: sociología | a: antropologia | t: tecnología | \ 
 | c: ciencias  | i: psicología | l: literatura   | n: religión   |\ 
 |e: pedagogía  | g: guías |*** cualquier otra tecla para salir ***"; \
	read "? > " a; \
	case $a in \
		f) mv ./$file1 $HOME/Books/filosofia/$file2 ;; \
		s) mv ./$file1 $HOME/Books/sociologia/$file2 ;; \
		a) mv ./$file1 $HOME/Books/antropologia/$file2 ;; \
		t) mv ./$file1 $HOME/Books/tecnologia/$file2 ;; \
		c) mv ./$file1 $HOME/Books/ciencias/$file2 ;; \
		g) mv ./$file1 $HOME/Books/guias/$file2 ;; \
		i) mv ./$file1 $HOME/Books/psicologia/$file2 ;; \
		l) mv ./$file1 $HOME/Books/literatura/$file2 ;; \
		n) mv ./$file1 $HOME/Books/religion/$file2 ;; \
		e) mv ./$file1 $HOME/Books/pedagogia/$file2 ;; \
		*) echo "bye"  ;; 
	esac
read "?x para  salir > " n; case $n in \
	x) loop=false ;; \
	*) loop=true ;; \
esac
done

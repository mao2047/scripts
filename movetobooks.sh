#! /bin/zsh
##########################################################
#script que renombra un archivo y lo mueve a la biblioteca
#por mao2047 
# fzf, sed y mv
# $tmp - guarda la ruta
# $ext - guarda la extensión
# case va a generar las opciones
##########################################################
loop=true; while $loop; do
file1=$(fzf); echo $file1; read "?Introduce nuevo nombre: " file2; tmp=${file1:r}; ext=${file1:e}; \
	print "Mover a: \n f: filosofía | s: sociología | a: antropologia | t: tecnología\n c: ciencias  | i: psicología | l: literatura   | n: religión\n e: pedagogía | g: guias | *** cualquier otra tecla para salir ***"; \
	read "? > " a; \
	case $a in \
		f) mv ./$file1 $HOME/Books/filosofia/$file2.$ext ;; \
		s) mv ./$file1 $HOME/Books/sociologia/$file2.$ext ;; \
		a) mv ./$file1 $HOME/Books/antropologia/$file2.$ext ;; \
		t) mv ./$file1 $HOME/Books/tecnologia/$file2.$ext ;; \
		c) mv ./$file1 $HOME/Books/ciencias/$file2.$ext ;; \
		g) mv ./$file1 $HOME/Books/guias/$file2.$ext ;; \
		i) mv ./$file1 $HOME/Books/psicologia/$file2.$ext ;; \
		l) mv ./$file1 $HOME/Books/literatura/$file2.$ext ;; \
		n) mv ./$file1 $HOME/Books/religion/$file2.$ext ;; \
		e) mv ./$file1 $HOME/Books/pedagogia/$file2.$ext ;; \
		*) echo "bye"  ;; 
	esac
read "?x para  salir > " n; case $n in \
	x) loop=false ;; \
	*) loop=true ;; \
esac
done

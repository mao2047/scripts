#! /bin/zsh

cd ~/Books; f=$(fzf); ext=${f:e}; \
	case $ext in \
		pdf) zathura $f & ;;\
		epub) ebook-viewer $f & ;;\
	        mobi) ebook-viewer $f & ;;\
	        azw3) ebook-viewer $f & ;;\
	        djvu) zathura $f & ;;\
	        *) print "not a document" ;;
        esac

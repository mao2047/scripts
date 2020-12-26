#! /bin/zsh
#sincronizacion rudimentaria de calcurse
calcurse && echo "Saving to dropbox" && cp -r ~/.local/share/calcurse/* ~/dp/calcurse && echo "done"

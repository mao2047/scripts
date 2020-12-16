#! /bin/zsh

cp $HOME/.config/scripts/* /home/warehouse/bin/scripts ; \
cd /home/warehouse/bin/scripts ; \
git add * ;  \
read "?Commet commit: " a;
git commit -m $a ;
git push origin master ;
echo "all done"

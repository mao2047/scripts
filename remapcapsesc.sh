#! /bin/zsh
# remap CAPS LOCK as ESC
#set keyboard to español latinoamérica
setxkbmap latam & ;
# increase key speed
xset r rate 300 50 ;
#remap ESC to super
setxkbmap -option caps:escape & 
#setxkbmap -option caps:super -variant altgr-intl
#but when pressen oncetreat it as scape
#killall xcape 2>/dev/null ; xcape -e "Super_L=Escape"
#xmodmap -e 'keycode 135 = Super_R'

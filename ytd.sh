#! /bin/zsh
#script by mao2047
#Download or watch youtube vids
read "?> " a; link=$(echo "'$a'"); \
print "1: watch | 2: download"; \
read "?> " sel; \
	case $sel in \
		1) echo $link | xargs -I $link mpv "$link" ;; \
		2) print " 1: mp4 video | 2: mp4HD | 3: webm | 4: mp3@320 | 5: mp3@128 | 6: m4a " && read "?> " sel2 ; \
			case $sel2 in \
				1) echo $link | xargs -I $link youtube-dl -f 'bestvideo[ext=mp4]/best[height<=720]' "$link" ;; \
				2) echo $link | xargs -I $link youtube-dl -f 'best[ext=mp4]' "$link" ;; \
				3) echo $link | xargs -I $link youtube-dl -f webm "$link" ;; \
				4) echo $link | xargs -I $link youtube-dl -x --audio-format mp3 --audio-quality 320K "$link" ;; \
				5) echo $link | xargs -I $link youtube-dl -x --audio-format mp3 --audio-quality 128K "$link" ;; \
				6) echo $link | xargs -I $link youtube-dl -x --audio-format m4a "$link" ;; \
				*) echo "bye" ;;
			esac ;;
		*) echo "bye" ;; \
	esac

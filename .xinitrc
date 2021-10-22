while xsetroot -name "`date +"%y.%m.%d / %a [%H:%M:%S]\"`"
do
    sleep 1
done &
exec dwm
exec zsh
setxkbmap us -variant colemak

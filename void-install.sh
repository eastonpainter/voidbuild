xbps-install -Su
xbps-install libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel vim htop xorg cparser neofetch cava tty-clock ncmpcpp mpc mpd zsh picom terminus-font xwallpaper dmenu firefox acpi make pkg-config
echo "zsh" >> ~/.bashrc
# Build st
git clone https://github.com/siduck76/st.git
cd st
make install
# Build dwm
cd ../
git clone https://git.suckless.org/dwm
cd dwm
make clean install
touch /etc/doas.conf
echo "permit nopass eve as root" > /etc/doas.conf
cd ~
zsh
source ~/.zsh_aliases
source ~/.zshrc
# Files:
# .vim
# .vimrc
# .xinitrc
# .zshrc
# .zsh_aliases
# .Xresources
# config.h
# music/
# pics/wallpapers/

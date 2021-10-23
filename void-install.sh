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
su eve
zsh
source ~/.zsh_aliases
source ~/.zshrc
mkdir -p pics/wallpapers
mkdir vids notes music programs projects .scripts
mv wall.png ~/pics/wallpapers
mv ~/config.h ~/dwm
cd ~/dwm
doas make clean install
cd ~
curl -O https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch
mv pfetch ~/.scripts
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

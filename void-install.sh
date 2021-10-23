xbps-install -Su
xbps-install libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel vim htop xorg cparser neofetch cava tty-clock ncmpcpp mpc mpd zsh picom terminus-font xwallpaper dmenu firefox acpi make pkg-config opendoas curl
cd /home/eve
echo "zsh" >> /home/eve/.bashrc
git clone https://github.com/siduck76/st.git
cd st
make install
cd ../
git clone https://git.suckless.org/dwm
cd dwm
make clean install
touch /etc/doas.conf
echo "permit nopass eve as root" > /etc/doas.conf
su eve
cd /home/eve
zsh
source ~/.zsh_aliases
source ~/.zshrc
mkdir -p pics/wallpapers
mkdir vids notes music programs projects .scripts
mv wall.png ~/pics/wallpapers
doas rm /home/eve/dwm/config.h
doas mv ~/config.h ~/dwm
cd ~/dwm
doas make clean install
cd ~
curl -O https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch
mv pfetch ~/.scripts
doas chmod 777 /home/eve/.scripts/pfetch

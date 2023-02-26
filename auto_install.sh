unzip FiraCode.zip
mkdir ~/.local/share/fonts
mv *.ttf ~/.local/share/fonts

cp -r alacritty ~/.config
cp -r ohmyposh ~/.config 

sudo sed -i '/^"cedilla"/s/:pt:/:pt:en:/' /usr/lib/gtk-*/**/immodules.cache

sudo cp /usr/share/X11/locale/en_US.UTF-8/Compose /usr/share/X11/locale/en_US.UTF-8/Compose.bak
sudo sed -i 's/ć/ç/g' /usr/share/X11/locale/en_US.UTF-8/Compose
sudo sed -i 's/Ć/Ç/g' /usr/share/X11/locale/en_US.UTF-8/Compose

grep -q GTK_IM_MODULE /etc/environment || (echo "GTK_IM_MODULE=cedilla" | sudo tee -a /etc/environment)
grep -q QT_IM_MODULE /etc/environment || (echo "QT_IM_MODULE=cedilla" | sudo tee -a /etc/environment)

yay -S heroku-cli jetbrains-toolbox discord slack code oh-my-posh alacritty nvm spotify btop
git config --global user.name IncSow
git config --global user.email helynt@dsifrance.fr

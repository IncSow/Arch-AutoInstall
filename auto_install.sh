unzip FiraCode.zip
mkdir ~/.local/share/fonts
mv *.ttf ~/.local/share/fonts

cp -r alacritty ~/.config
cp -r ohmyposh ~/.config 

yay -S heroku-cli jetbrains-toolbox discord slack code oh-my-posh alacritty nvm spotify
git config --global user.name IncSow
git config --global user.email helynt@dsifrance.fr

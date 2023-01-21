unzip FiraCode.zip
mkdir ~/.local/share/fonts
mv *.ttf ~/.local/share/fonts

cp -r alacritty ~/.config
cp -r ohmyposh ~/.config 

yay -S heroku jetbrains-toolbox discord slack code oh-my-posh alacritty nvm spotify
ssh-keygen
cat ~/.ssh/id_rsa.pub

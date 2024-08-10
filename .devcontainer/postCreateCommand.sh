#sudo apt install zsh -y 
sudo apt install yadm bat -y    # yadm is a dotfiles manager git clone and bat is a cat replacement
sudo apt install lsd -y         # lsd is a ls replacement
sudo apt install curl -y
sudo apt install neofetch -y


# Install oh-my-zsh
sudo rm -rf ~/.oh-my-zsh    # Remove previous installation
zsh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install powerlevel10k and clone dotfiles
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
rm ~/.zshrc ~/.p10k.zsh
yadm clone -b devcontainers https://github.com/caverar/dotFiles.git
source ~/.zshrc
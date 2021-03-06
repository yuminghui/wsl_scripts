sudo apt install zsh
sudo apt update
sudo apt install autojump
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i -- 's/plugins=(git)/plugins=(zsh-syntax-highlighting git zsh-autosuggestions autojump)/g' ~/.zshrc
sed -i -- 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g' ~/.zshrc

chsh -s /bin/zsh
echo 'Update apt'
sudo yum update


echo
echo 'Install zsh shel'
yes | sudo yum install zsh

echo
echo 'Change default shell to zsh'
chsh -s $(which zsh)

echo
echo 'Install on my zsh!'
yes | zsh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo
echo 'Install curl'
sudo yum install curl


echo
echo 'Install plugin (autosuggestion, syntax highlighter)'
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=(git docker docker-compose zsh-autosuggestions)" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc

echo
echo "Install vim"
sudo yum install vim
echo "alias vi='vim'" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc

rm -rf zsh-autosuggestions zsh-syntax-highlighting

echo 'Update apt'
sudo apt-get update


echo 'Install zsh shel'
sudo apt-get install zsh

echo 'Change default shell to zsh'
chsh -s /usr/bin/zsh


echo 'Install on my zsh!'
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Install curl'
sudo apt-get install curl

echo 'Install plugin (autosuggestion, autojump, syntax highlighter)'
sudo apt-get install zsh-autosuggestions autojump zsh-syntax-highlighting

echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "plugins=(autojump)" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "alias vi='vim'" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc

echo "Add Plugin(git docker docker-compose)"
echo "plugins=(git docker docker-compose)" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "Install vim"
sudo apt-get install vim
echo "alias vi=vim" >> ${ZDOTDIR:-$HOME}/.zshrc


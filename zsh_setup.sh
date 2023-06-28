sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/agnoster/agnoster-zsh-theme ~/.oh-my-zsh/themes/agnoster
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
sed -i 's/ZSH_THEME.*/ZSH_THEME="agnoster"/' ~/.zshrc 
sed -i '/plugins/ {s/)/ zsh-syntax-highlighting zsh-autosuggestions)/}' ~/.zshrc
echo "HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word" >> ~/.zshrc

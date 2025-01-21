# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins to load
plugins=(zsh-autosuggestions)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Syntax highlighting (ensure this path is correct)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#after startup
fastfetch
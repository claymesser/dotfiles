ZSH_BASE=$HOME/.dotfiles # Base directory for ZSH configuration

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

# Update path for homebrew
export PATH=/opt/homebrew/bin:$PATH

antigen use oh-my-zsh # Yes, I want to use Oh My ZSH

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

# Node stuff
antigen bundle node
antigen bundle npm

# Set the theme
antigen theme romkatv/powerlevel10k

# And lastly, apply the Antigen stuff
antigen apply

# Source extra files
source ~/.aliases 
source ~/.functions
source ~/.prompt

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

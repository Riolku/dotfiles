# Vim keybindings
bindkey -v

# Enable autocompletion
autoload -Uz compinit
compinit

# Enable colours
autoload -Uz colors

# Load git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
source ~/.config/zsh/git-prompt.zsh

PROMPT='[%*] %F{blue}%n@%m%f %F{green}%~%f$(gitprompt)
> '

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ -f /usr/share/zsh/share/antigen.zsh ]; then
    source /usr/share/zsh/share/antigen.zsh
elif [ -f /home/ejp/antigen/antigen.zsh ]; then
    source /home/ejp/antigen/antigen.zsh
elif [ -f /usr/share/zsh-antigen/antigen.zsh ]; then
    source /usr/share/zsh-antigen/antigen.zsh
fi

# Use the oh-my-zsh framework libraries
antigen use oh-my-zsh

# Use my local theme
#antigen theme /home/ejp/.oh-my-zsh/custom/themes/fishy.zsh-theme

antigen bundle zdharma/fast-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

#antigen bundle nojhan/liquidprompt

antigen theme denysdovhan/spaceship-prompt

antigen apply

SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_SYMBOL=''

if [ -e "$HOME/.zshlocal" ]; then
    source ~/.zshlocal
fi

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
elif [ -f /usr/share/fzf/key-bindings.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
fi

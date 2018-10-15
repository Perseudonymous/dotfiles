source /usr/share/zsh/share/antigen.zsh

# Use the oh-my-zsh framework libraries
antigen use oh-my-zsh

# Use my local theme
#antigen theme /home/ejp/.oh-my-zsh/custom/themes/fishy.zsh-theme

antigen bundle zdharma/fast-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle nojhan/liquidprompt

antigen apply

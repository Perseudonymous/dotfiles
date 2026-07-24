eval "$(starship init zsh)"
zstyle ':zephyr:plugin:*' use-xdg-basedirs no

source /usr/share/zsh-antidote/antidote.zsh
antidote load


if [ -e "$HOME/.zshlocal" ]; then
    source ~/.zshlocal
fi

source <(fzf --zsh)


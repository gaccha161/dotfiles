########
# alias
alias l="ls -F -G"
alias ll="ls -laF -G"
alias tree="tree -N"
alias du="du -h"
alias df="df -h"
alias rm="rm -i"
alias mv="mv -i"

#######
# autoload
autoload -U compinit
compinit

########
# LANG
export LANG=ja_JP.UTF-8

########
# PROMPT
PROMPT="%[%n@%m%] "
RPROMPT="%[%40<...<%/%] "

########
# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

########
# bindkey
#bindkey -v
bindkey -e

########
# change directory without 'cd'
setopt auto_cd
########
# use cd history
setopt auto_pushd

########
# auto correct
setopt correct
setopt list_packed

setopt nolistbeep

########
# 先方予測
#autoload predict-on
#predict-on

########
# ls color
export LSCOLORS=dxgxcxdxbxegedabagacad
zstyle ':completion:*' list-colors 'di=;33;1' 'ln=;36;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'

autoload zed

[ -f ~/.zshrc.mine ] && source .zshrc.mine



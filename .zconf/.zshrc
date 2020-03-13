export EDITORP=vim
export PATH=$PATH:/opt/anaconda/bin
alias ls='ls --color=auto'

autoload -Uz vcs_info
autoload -Uz colors
autoload -Uz compinit && compinit
setopt prompt_subst
setopt append_history
setopt share_history
setopt glob_dots
setopt NO_beep
# export ZSH_LPROMPT_COLOR='blue'
# export ZSH_RPROMPT_COLOR='blue'
# export ZSH_LPROMPT_BG_COLOR='black'
# export ZSH_RPROMPT_BG_COLOR='black'
# export ZSH_GIT_BRANCH_COLOR='green'

PROMPT='%K{'${ZSH_LPROMPT_BG_COLOR}'}%F{'${ZSH_LPROMPT_COLOR}'}[%n@%m %~]%f%k $ '
RPROMPT='%K{'${ZSH_RPROMPT_BG_COLOR}'}%F{'${ZSH_RPROMPT_COLOR}'}[%D{%H:%M:%S}]%f%k'

autoload -Uz add-zsh-hook
function set_prompt(){
}
add-zsh-hook precmd set_prompt
function set_rprompt(){
    vcs_info
}
add-zsh-hook precmd set_rprompt

function chpwd() { ls }

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

setopt hist_ignore_dups
setopt correct
bindkey -v


export EDITORP=vim
export PATH=$PATH:/opt/anaconda/bin
export PATH=$PATH:/home/strv/go/bin

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

alias wine32="WINEPREFIX=~/.wine32 WINEARCH=win32 wine"
alias winetricks32="WINEPREFIX=~/.wine32 WINEARCH=win32 winetricks"

MCC_DIR="$HOME/Documents/repo/Command-Block-Assembly"
alias mcc="$MCC_DIR/cba/bin/python $MCC_DIR/mcc.py"

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

# function chpwd() { ls }

function custom_cd()
{
    [[ $# -eq 0 ]] && pushd $HOME > /dev/null && return
    pushd $@ > /dev/null
    ls
}
alias cd=custom_cd

function custom_popd()
{
    popd $@ > /dev/null
}
alias pd=custom_popd

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


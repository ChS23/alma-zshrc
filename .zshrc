# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto

plugins=(
  git
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
  extract
  sudo
  copypath
  dirhistory
  history
  web-search
  jsontools
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gf='git fetch'
alias grb='git rebase'

# Docker aliases
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dimg='docker images'
alias dex='docker exec -it'
alias dlog='docker logs'
alias dprune='docker system prune -af'

alias pycharm='nvim'
alias vim='nvim'
alias nano='nvim'
alias code='nvim'

alias ..='cd ..'
alias ...='cd ../..'

alias update='sudo dnf update -y && sudo dnf upgrade -y'
alias cleanup='sudo dnf clean all'
alias ports='netstat -tulanp'
alias mkdir='mkdir -pv'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

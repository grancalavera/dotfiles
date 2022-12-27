export ZSH="/home/grancalavera/.oh-my-zsh"
ZSH_THEME="edvardm"

plugins=(
  git
  gitignore
)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/rsa_id"

export EDITOR="code -w"
export PATH=~/.local/bin:~/.npm-packages/bin:$PATH

function vset {
  local VOL=$1
  pactl set-sink-mute "${SINK}" 0
  pactl set-sink-volume "${SINK}" "${VOL}%"
}

alias works="cd ~/works"
alias ttt="cd ~/works/ttt"
alias ttta="cd ~/works/ttt/ttt-api"
alias tttc="cd ~/works/ttt/ttt-client"
alias ttts="cd ~/works/ttt/ttt-server"
alias tttt="cd ~/works/ttt/ttt-core"
alias tttd="cd ~/works/ttt/ttt-domain"

alias lab="cd ~/works/labyrinth"
alias mz="cd ~/works/mazes"
alias recho="cd ~/works/redis-echo"
alias open="xdg-open"

alias qn="cd ~/works/quiet-notes"
alias qnw="cd ~/works/quiet-notes/quiet-notes-web"
alias qnf="cd ~/works/quiet-notes/quiet-notes-functions"
alias qnt="cd ~/works/quiet-notes/quiet-notes-tools"
alias qnl="cd ~/works/quiet-notes/quiet-notes-lib"

alias p="pnpm"
alias t="pnpm typecheck"

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '


[ -f "/home/grancalavera/.ghcup/env" ] && source "/home/grancalavera/.ghcup/env" # ghcup-env

# pnpm
export PNPM_HOME="/home/grancalavera/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

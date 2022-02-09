export ZSH="/home/grancalavera/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
  git
  gitignore
  yarn-autocompletions
  yarn
)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/rsa_id"

export EDITOR="code -w"
export PATH=~/.local/bin:~/.npm-packages/bin::~/.yarn-packages/bin:$PATH

SINK=alsa_output.pci-0000_00_1f.3.analog-stereo

alias vmute="pactl set-sink-mute $SINK toggle"
alias vup="pactl set-sink-volume $SINK +5%"
alias vdown="pactl set-sink-volume $SINK -5%"

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

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

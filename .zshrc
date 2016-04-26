#oh-my-zsh configurations
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

## Plugins
plugins=(git rails ruby)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export TERM=xterm-256color
ssh-add ~/.ssh/id_rsa &>/dev/null

## Ruby setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

## Java setup
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

## Python setup
export PATH="$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

## System level aliases
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias psall="ps aux"
alias net='traceroute 8.8.8.8'

## EMR Project
alias setup="pyenv activate emr-backend && source env/emr-env && pip install -r requirements-test.txt && pip install -r requirements-deploy.txt && run setup --no_sudo=True && python factories dev"
alias serve="./manage.py runserver"
alias apiT="run test"
alias migr="manage.py migrate"
alias ge2e="grunt test:e2e"
alias gunit="grunt test:unit"
alias gprod="grunt connect:prod"
alias gdev="grunt connect:dev"
alias dbstart="psql -h localhost"
alias dblog="tail /usr/local/var/postgres/server.log"

## Online Banking aliases
alias gd='grunt develop'
alias ga='grunt acceptance'
alias gad='grunt acceptance:debug'
alias bstub='bundle exec rake server:stub'

## Git aliasis
alias gtree="gitk --all"
alias ggg="git pull -r && grunt && git push"
alias open="open *.ipr"
alias gpr="git pull -r"
alias gspush='git svn dcommit'
alias gspull='git svn rebase'



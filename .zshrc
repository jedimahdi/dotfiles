export ZSH=$HOME/.oh-my-zsh

TERM=xterm-256color
export TERM=xterm-256color

export GOPATH=$HOME/Repositories/Work/go
export PATH=$PATH:$GOPATH/bin


ZSH_THEME="spaceship"
export SPACESHIP_CHAR_SYMBOL="❯ "
export SPACESHIP_JOBS_SYMBOL="»"
export SPACESHIP_TIME_SHOW=false
export SPACESHIP_USER_PREFIX="as "
export SPACESHIP_USER_SHOW="needed"
export SPACESHIP_DIR_TRUNC_PREFIX=".../"
export SPACESHIP_DIR_TRUNC_REPO=false

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/zsh_aliases

# # Syntax highlighting and tab completion
autoload -U compinit && compinit

export LANG=en_US.UTF-8

export EDITOR='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

TERM=xterm-256color
export TERM=xterm-256color

export GOPATH=$HOME/Repositories/Work/go
export PATH=$PATH:$GOPATH/bin

alias vim=nvim
alias mirrorUpdate="sudo reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
#alias ls="colorls"
alias lc='colorls -lA --sd'
alias ls='colorls'
alias torConfig="sudo nvim /etc/tor/torrc"
alias torRestart="sudo systemctl restart tor.service"
alias wmClass="xprop WM_CLASS"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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

# # Syntax highlighting and tab completion
autoload -U compinit && compinit


#autoload -Uz compinit


export LANG=en_US.UTF-8

export EDITOR='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


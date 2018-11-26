# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# for vscode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=~/.rbenv/shims:/Users/mello/Library/Python/3.7/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

alias python=python3
alias pip=pip3
alias prp="pipenv run python"
alias be="bundle exec"
alias ber="bundle exec rake"
alias hr="heroku run"
alias hrber="heroku run bundle exec rake"
alias hrailsc="heroku run bundle exec rails c"
alias youtube-mp3='youtube-dl -x  --audio-format="mp3"'
alias radio="~Documents/IProduce/Sounds/BC.radio"
alias bc-dev="~Documents/BurnCartelWeb"

eval "$(rbenv init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(hub alias -s)"


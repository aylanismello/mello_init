## Mello Init

This is a guide to setting up and configuring my OSX Machine if I ever forget.


### Install Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Also install Homebrew services, which acts as a launchctl wrapper for launching multiple processes.

```bash
brew tap homebrew/services
```

### Install zsh
```bash
 brew install zsh zsh-completions
 ```

 I use oh-my-zsh as my zsh configuration manager.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```


NOTE: ZSH presents a couple of kinks with using NVM, which are addressed in the ```~/.zshrc``` file

#### ~/.zshrc file
```bash
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/Users/aylan_mello/.rbenv/shims:$PATH


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

eval "$(hub alias -s)"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For a full list of active aliases, run `alias`.
alias fire="cd /Users/aylan_mello/Documents/burn_cartel/website"
alias gco="git checkout"
alias be="bundle exec"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
```

### Setting up Node via NVM

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh |bash
```
or script [found here](https://github.com/creationix/nvm)

```bash
nvm install ${versionNumber}
nvm use ${versionNumber}
```

### Installing Ruby with rbenv
```bash
  brew install rbenv
  rbenv init -
```

**MAKE SURE THAT SHIMS ARE SET UP CORRECTLY IN PATH**

Note this line in `~.zshrc` which deals with setting the shims directory as the first path to search when you invoke any ruby-related command in the shell.
```bash
export PATH=/Users/aylan_mello/.rbenv/shims:$PATH
```


#### ~/.hyper.js file
```javascript
module.exports = {
  config: {
    ...
    // this is for auto loading hyper with a global hotkey
    visor: {
      hotkey: 'CommandOrControl+Shift+A',
      position: 'top', // or left, right, bottom
      width: 800, // Optional, defaults to half of viewable area for horizontal positions, 100% for vertical
      height: 1200 // Optional, defaults to half of viewable area for vertical positions, 100% for horizontal
    }

  },

  plugins: [
	"hyperline",
	"hypercwd",
	"hyperterm-visor",
	"hyperblue"
	],
  ...
};
```

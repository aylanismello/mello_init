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
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/${MY_HOME_DIR_NAME}/.rbenv/shims:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


eval "$(hub alias -s)"
eval "$(rbenv init -)"
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
  rbenv install ${NEWEST_STABLE_RUBY_VERSION}
  rbenv global ${NEWEST_STABLE_RUBY_VERSION}
  rbenv init - #this is actually in an eval function in our .zshrc file
```

**MAKE SURE THAT SHIMS ARE SET UP CORRECTLY IN PATH**

Note this line in `~.zshrc` which deals with setting the shims directory as the first path to search when you invoke any ruby-related command in the shell.
```bash
export PATH=/Users/${MY_HOME_DIR_NAME}/.rbenv/shims:$PATH
```

To test that rbenv + its shims are set up correctly,
` which gem ` *should return the path to our shims folder ❤️*

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

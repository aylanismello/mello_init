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
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` if you're using a Linux set up
    // that doesn't shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // this is for auto loading hyper with a global hotkey
    visor: {
      hotkey: 'CommandOrControl+Shift+A',
      position: 'top', // or left, right, bottom
      width: 800, // Optional, defaults to half of viewable area for horizontal positions, 100% for vertical
      height: 1200 // Optional, defaults to half of viewable area for vertical positions, 100% for horizontal
    },


    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
	"hyperline",
	"hypercwd",
	"hyperterm-visor",
	"hyperblue"
	],
  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
```

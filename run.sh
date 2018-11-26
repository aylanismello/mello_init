RUBY_VERSION=2.5.3
NODE_VERSION=10.13.0

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/services
# zsh
brew install zsh zsh-completions
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# nvm / node
# update to most recent version for all these
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install $NODE_VERSION
nvm use $NODE_VERSION
# + yarn
# 
brew install yarn --without-node


# rbenv / ruby
brew install rbenv
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv init - #this is actually in an eval function in our .zshrc file

# we always use these
gem install bro

# pipenv / python
brew install python
pip3 install pipenv

#install these too
pip3 install scdl
pip3 install youtube-dl

#### postgres <3
brew install postgres
brew services start postgresql

#### redis <3
brew install redis
brew services start redis

# heroku
brew install heroku/brew/heroku

#awscli
brew install awscli

#hub
brew install hub

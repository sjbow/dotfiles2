#sh .osx
ln -sfv ~/dotfiles/plugins.vim ~/.vim
ln -sfv ~/dotfiles/snippets ~/.vim
ln -sfv ~/dotfiles/railscast.vim ~/.vim/colors
ln -sfv ~/dotfiles/.vimrc ~/

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ctags
brew install wget
brew install the_silver_surfer
brew install php-cs-fixer

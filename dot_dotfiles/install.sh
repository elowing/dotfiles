#usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install asdf
brew install bat
brew install chezmoi
brew install --cask datweatherdoe
brew install powerlevel10k
brew install ripgrep

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
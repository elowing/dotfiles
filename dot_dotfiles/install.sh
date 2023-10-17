#usr/bin/env zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install asdf
brew install bat
brew install chezmoi
brew install --cask datweatherdoe
brew install powerlevel10k
brew install ripgrep

chezmoi init https://github.com/elowing/dotfiles.git
echo 'Run `chezmoi diff` to see changes to be made to $HOME'
echo 'If those are good, run `chezmoi apply -v`'
echo 'If not, run `chezmoi edit $FILE`'
echo 'To pull and update anytime, run `chezmoi update -v`'

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
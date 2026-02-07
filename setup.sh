# Install Xcode Command Line Tools (required for Homebrew and many dev tools)
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew formulae (run from repo root: cd /path/to/mac-setup first)
xargs brew install < brew-formulae.txt

# Install Homebrew casks (run from repo root)
xargs brew install --cask < brew-casks.txt

# Setup bash_profile and other dotfiles
cd ~
curl -O https://raw.githubusercontent.com/w3cj/dotfiles/master/.bash_profile
curl -o .gitignore https://raw.githubusercontent.com/w3cj/dotfiles/master/.gitignore

# Configure git (replace with your name and email)
git config --global user.name "w3cj"
git config --global user.email "cj@null.computer"
git config --global core.editor nano

# Install Node Version Manager (nvm) - see https://github.com/nvm-sh/nvm/releases for latest
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# Then add to your .bash_profile / .zshrc:
#   export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# After opening a new terminal:
nvm install --lts
nvm install latest
nvm use latest
npm install -g lite-server gitignore license

# Create dev folder
mkdir -p ~/dev

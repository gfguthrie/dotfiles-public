# Public Dotfiles
Shell, terminal, &amp; computer setup not specifically related to my current workplace

## Installation steps
Steps to get dev up & running
1. Install Homebrew https://brew.sh
2. `brew install git zsh`
3. `chsh -s /usr/local/bin/zsh`
4. Install Zim https://zimfw.sh
5. Pull this repo
   - `brew bundle --file Projects/dotfiles-public/personal.Brewfile`
   - `ln -s Projects/dotfiles-public/.zimrc .zimrc` (check to make sure repo zimrc is current)
   - `zimfw install` & `zimfw uninstall`
   - Source shell-integration/wezterm.sh at top of .zshrc
   - Source personal.zsh in .zshrc
   - `ln -s Projects/dotfiles-public/wezterm-canonical-solarized/canonical_solarized.lua .config/wezterm/canonical_solarized.lua`
   - `ln -s Projects/dotfiles-public/wezterm-canonical-solarized/canonical_solarized_auto_appearance.lua .config/wezterm/canonical_solarized_auto_appearance.lua`
   - `ln -s Projects/dotfiles-public/.wezterm.lua .wezterm.lua`

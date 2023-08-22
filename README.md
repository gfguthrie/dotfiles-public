# Public Dotfiles
Shell, terminal, &amp; computer setup not specifically related to my current workplace

## Installation steps
Steps to get dev up & running
1. Install Homebrew https://brew.sh
2. ```sh
   brew install git zsh
   ```
5. ```sh
   chsh -s /usr/local/bin/zsh
   ```
7. Install Zim https://zimfw.sh
8. Pull this repo
 - ```sh
   brew bundle --file Projects/dotfiles-public/personal.Brewfile
   ```
 - ```sh
   ln -s Projects/dotfiles-public/.zimrc .zimrc
   ```
 - ```sh
   zimfw install && zimfw uninstall
   ```
 - Source `Projects/dotfiles-public/shell-integration/wezterm.sh` at top of .zshrc
 - Source `Projects/dotfiles-public/personal.zsh` in .zshrc
 - ```sh
   ln -s Projects/dotfiles-public/wezterm-canonical-solarized/canonical_solarized.lua .config/wezterm/canonical_solarized.lua
   ```
 - ```sh
   ln -s Projects/dotfiles-public/wezterm-canonical-solarized/canonical_solarized_auto_appearance.lua .config/wezterm/canonical_solarized_auto_appearance.lua
   ```
 - ```sh
   ln -s Projects/dotfiles-public/.wezterm.lua .wezterm.lua
   ```
## Profiling
At the top of `.zshrc`:
```sh
zmodload zsh/zprof
```

At the bottom of `.zshrc`
```sh
zprof
```

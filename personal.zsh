# source this file in .zshrc like so
# [[ -s ${HOME}/Projects/dotfiles-public/personal.zsh ]] && source ${HOME}/Projects/dotfiles-public/personal.zsh

# customize pure colors to be solarized
# biased towards light, but 14 also works on dark
zstyle :prompt:pure:execution_time color 9
zstyle :prompt:pure:git:arrow color 6
zstyle :prompt:pure:git:stash color 6
zstyle :prompt:pure:git:branch color 14
zstyle :prompt:pure:git:branch:cached color 5
zstyle :prompt:pure:git:action color 5
zstyle :prompt:pure:git:dirty color 1
zstyle :prompt:pure:host color 14
zstyle :prompt:pure:path color 4
zstyle :prompt:pure:prompt:error color 1
zstyle :prompt:pure:prompt:success color 13
zstyle :prompt:pure:prompt:continuation color 14
zstyle :prompt:pure:user color 14
zstyle :prompt:pure:user:root color 1
zstyle :prompt:pure:virtualenv color 14

# aliases
alias la='ls -laFh'
alias be='bundle exec'
alias berc='be rails c'
alias berd='be rails db'

# n https://github.com/tj/n#optional-environment-variables
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

# https://github.com/postmodern/chruby#auto-switching
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

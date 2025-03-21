# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="strug"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    direnv
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Git aliases for zsh
# Basic git commands
alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcae='git commit --amend --no-edit'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gl='git pull'
alias gf='git fetch'

# Branch operations
alias gb='git branch'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gm='git merge'

# Log viewing
alias glo='git log --oneline'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'

# Stash operations
alias gst='git stash'
alias gsta='git stash apply'
alias gstp='git stash pop'
alias gstl='git stash list'

# Reset and checkout
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gundo='git reset --soft HEAD^'
alias gdiscard='git checkout --'
alias gunstage='git reset HEAD --'

# Diff and show
alias gd='git diff'
alias gdc='git diff --cached'
alias gshow='git show'

# Remote operations
alias grv='git remote -v'
alias gra='git remote add'

# Useful compound commands
alias gnuke='git reset --hard && git clean -df' # Completely clean working directory
alias gclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d' # Delete merged branches

# Check what you're about to push
alias gpushl='git log --pretty=oneline --abbrev-commit --graph @{u}..'

# Find content in tracked files
alias gfind='git grep -i'

# Custom commands - examples
gopen() {
  git remote -v | head -n1 | awk '{print $2}' | sed 's/git@/https:\/\//' | sed 's/\.git$//' | sed 's/:/\//' | xargs open
}

# Easy commit all changes with a message
gac() {
  git add --all && git commit -m "$*"
}

# Create branch and push it to origin
gbranch() {
  git checkout -b $1 && git push -u origin $1
}

# Verbose checkout tracking function
gct() {
  echo "Fetching from all remotes..."
  git fetch --all
  echo "Checking out branch origin/$1..."
  git checkout -t origin/$1 && echo "Successfully checked out branch $1"
}

# Lazygit alias
alias lg='lazygit'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=250000
SAVEHIST=250000
setopt appendhistory

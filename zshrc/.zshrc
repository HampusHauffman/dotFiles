# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#eval "$(/usr/local/bin/mise activate zsh)"
eval "$(~/.local/bin/mise activate zsh)"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)


export EDITOR='nvim'
export VISUAL='nvim'
export GIT_EDITOR='nvim'

#Fuck
eval "$(thefuck --alias)"

#Zoxide
eval "$(zoxide init zsh)"

# fzf
eval "$(fzf --zsh)"

#Flutter
export FLUTTER_ROOT="$(mise where flutter)"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export ZSH="$HOME/.oh-my-zsh"

export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

alias v=nvim

alias l=eza
alias ls=eza --color=always --icons=always
alias la=eza -la --color=always --icons=always
alias ll=eza -lah --color=always --icons=always
alias ls=eza --color=always --icons=always

alias f=fuck

alias cat=bat

alias cd=z

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

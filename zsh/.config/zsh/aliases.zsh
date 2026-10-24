# Better ls
alias ls='eza --icons auto'

# Detailed listing
alias ll='eza -lh --icons --git'

# Detailed listing including hidden files
alias la='eza -lah --icons auto --git'

# Tree view
alias tree='eza --tree --icons auto'

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls

# Better cat
alias cat='bat'

# =========================================================
# Core utilities
# =========================================================

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# =========================================================
# Navigation
# =========================================================

alias -- -='cd -'  # -- prevents - being parsed as a flag; cd - jumps to previous directory

# =========================================================
# Editor
# =========================================================

alias vim='nvim'

# =========================================================
# Git
# =========================================================

alias gstatus="git status"
alias gpush="git push"
alias gpull="git pull"
alias lgit="lazygit"

# =========================================================
# Fastfetch
# =========================================================

alias fastfetch='/usr/bin/fastfetch -c ~/.config/fastfetch/config.jsonc'

# =========================================================
# Distrobox
# =========================================================

alias dib="distrobox"

# =========================================================
# Nix
# =========================================================

alias sunr="sudo nixos-rebuild switch --flake .#hyprnix"

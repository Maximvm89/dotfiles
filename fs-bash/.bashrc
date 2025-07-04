# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Number of commands to keep in memory for the current session
HISTSIZE=100000

# Number of commands to keep in the history file (~/.bash_history)
HISTFILESIZE=200000

# Append to history instead of overwriting it
shopt -s histappend

# Save history after each command to avoid history loss
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# User specific aliases and functions
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1=['\[\e[38;5;27m\]\h\[\e[0m\]@\[\e[37;2m\]\t\[\e[0m\] \[\e[3m\]\W\[\e[0m\] \[\e[38;5;72;4m\]${PS1_CMD1}\[\e[0m\]']

alias ws="cd /net/code/workspaces/mparisi/git"
alias sshvfx="ssh sys2767.ldn.vfx -t bash"
alias sshvfxel7="ssh sys2261.ldn.vfx -t bash"
alias dev="module load job-fscfc;source /net/code/workspaces/mparisi/git/dev.sh"
alias asu="analyseSoftwareUse"
alias sshshared="ssh sys-vm0065.ldn"
alias sshsharedMTL="ssh sys864.mtl.vfx"
alias devel="module load /net/sw/global/show/usesDefaultOsTools-fc/pythonessentials-devel/latest/modules/pythonessentials-devel/3.10"
alias pyright="source /net/code/workspaces/mparisi/envdev/python/bin/activate"

# alias sync_pvim="rsync -av --delete /net/code/workspaces/mparisi/envdev/pvim/ ~/pvim/"

# alias nvim='/net/code/workspaces/mparisi/envdev/nvim_appimage/nvim.appimage'

export PATH="/net/code/workspaces/mparisi/envdev/.cargo/bin:$PATH"
export PATH="/net/code/workspaces/mparisi/envdev/lazygit:$PATH"
export PATH="/net/code/workspaces/mparisi/envdev/ripgrep:$PATH"
export PATH="/net/code/workspaces/mparisi/envdev/nvim_appimage:$PATH"
export PATH="/net/code/workspaces/mparisi/envdev/kitty/kitty.app/bin:$PATH"
export NVM_DIR="$HOME/.nvm"


export EDITOR="nvim"
export VISUAL="nvim"

source /etc/profile.d/vte.sh

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

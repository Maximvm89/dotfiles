# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1=['\[\e[38;5;27m\]\h\[\e[0m\]@\[\e[37;2m\]\t\[\e[0m\] \[\e[3m\]\W\[\e[0m\] \[\e[38;5;72;4m\]${PS1_CMD1}\[\e[0m\]']

alias ws="cd /net/code/workspaces/mparisi/git"
alias sshvfx="ssh sys2261.ldn.vfx -t bash"

export PATH="/net/code/workspaces/mparisi/git/lazygit:$PATH"
export PATH="/net/code/workspaces/mparisi/git/nvim-el7/bin:$PATH"
export PATH="/net/code/workspaces/mparisi/git/ripgrep:$PATH"
export NVM_DIR="$HOME/.nvm"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "/net/code/workspaces/mparisi/git/.cargo/env"

eval "$(zoxide init bash)"

alias ls="eza --color=always --long --git --no-filesize --icons=always"

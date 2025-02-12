eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init bash)"

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export PATH=$PATH:/usr/local/go/bin:${HOME}/go/bin:

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls="eza --color=always --long --git --no-filesize --icons=always --all"
alias ll="ls -la"

alias nfs="zellij delete-all-sessions; zellij --session Framestore"
alias fs="zellij attach Framestore"
alias vpn="~/vpn_launcher"
alias cd='z'

alias sshshared="ssh -Y sys-vm0065.ldn"
alias sshsharedel7="ssh -Y sys-vm0019.ldn"
alias sshvfx="ssh -Y sys2261.ldn.vfx"
alias sshvfxel9="ssh -Y sys2240.ldn.vfx"
setopt inc_append_history

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

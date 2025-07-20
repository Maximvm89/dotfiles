eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init bash)"

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export XDG_CONFIG_HOME="$HOME/.config"

export PATH=$PATH:/usr/local/go/bin:${HOME}/go/bin:

bindkey "\e[3~" delete-char

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

alias ws='cd /Volumes/Framestore/git'
alias pcoip=/Applications/PCoIPClient.app/Contents/MacOS/PCoIPClient

alias ls="eza --color=always --long --git --icons=always --all"
alias ll="ls -la"

alias nfs="zellij delete-all-sessions; zellij --session Framestore"
alias fs="zellij attach Framestore"
alias vpn="~/vpn_launcher"

alias sshshared="kitten ssh -Y sys-vm0065.ldn"
alias sshsharedel7="kitten ssh -Y sys-vm0019.ldn"
alias sshvfxel7="kitten ssh -Y sys2261.ldn.vfx"
alias sshvfx="kitten ssh -Y sys2240.ldn.vfx"
alias ananas="kitten ssh marco@192.168.68.91"
alias pikvm='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app="https://192.168.68.61/"'
alias pcoipSys2240='/Applications/PCoIPClient.app/Contents/MacOS/PCoIPClient -b pcoip-cm-ldn.framestore.com --desktop sys2240.ldn.vfx.framestore.com  --password EcakufefeS92 --username mparisi &'
alias pcoipSys2261='/Applications/PCoIPClient.app/Contents/MacOS/PCoIPClient -b pcoip-cm-ldn.framestore.com --desktop sys2261.ldn.vfx.framestore.com  --password EcakufefeS92 --username mparisi &'
alias pcoip="open --new /Applications/PCoIPClient.app"
setopt inc_append_history

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

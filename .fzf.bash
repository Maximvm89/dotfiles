# Setup fzf
# ---------
if [[ ! "$PATH" == */net/homes/mparisi/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/net/homes/mparisi/.fzf/bin"
fi

eval "$(fzf --bash)"

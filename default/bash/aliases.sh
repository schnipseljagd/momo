# Vi
if command -v nvim &>/dev/null; then
  alias vi="nvim"
else
  alias vi="vim"
fi

# File system
if command -v eza &>/dev/null; then
  alias ls='eza -lh --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
fi

if command -v bat &>/dev/null; then
  alias cat="bat"
fi

if command -v ff &>/dev/null; then
  alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
fi

if command -v rg &>/dev/null; then
  alias grep="rg"
fi

if command -v zoxide &>/dev/null; then
  alias cd="zd"
  zd() {
    if [ $# -eq 0 ]; then
      builtin cd ~ && return
    elif [ -d "$1" ]; then
      builtin cd "$1"
    else
      z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    fi
  }
fi

if command -v hyfetch &>/dev/null; then
  alias neofetch='/usr/bin/hyfetch'
  alias neowofetch='/usr/bin/hyfetch'
  alias fastfetch='/usr/bin/hyfetch'
  alias zfetch='/usr/bin/hyfetch'
fi

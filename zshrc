# Run for interactive shells

# Toggle debugging. Change to `true` to view what files are loaded, when.
local debug=false

if $debug; then; echo "Debugging from /etc/zsh/zshrc"; fi

# Load /etc/profile
if $debug; then; echo "Loading /etc/profile"; fi
emulate sh -c 'source /etc/profile'

# Load /etc/zsh/lib files
if test -d /etc/zsh/lib/; then
  if $debug; then; echo "Loading /etc/zsh/lib/*.zsh"; fi
  for file in `ls /etc/zsh/lib/*.zsh | sort`; do
    if $debug; then; echo "  $file... "; fi
    test -r "$file" && . "$file"
  done
  unset file
fi

# Load theme
export ZSH_THEME=dissonance

if [ ! "$ZSH_THEME" = ""  ]; then
  if [ -f "/etc/zsh/themes/$ZSH_THEME.zsh" ]; then
    if $debug; then; echo "Loading theme: $ZSH_THEME"; fi
    source "/etc/zsh/themes/$ZSH_THEME.zsh"

    if [ -d "/etc/zsh/themes/$ZSH_THEME" ]; then
      for file in `ls /etc/zsh/themes/$ZSH_THEME/*.zsh | sort -V`; do
        if $debug; then; echo "  $file... "; fi
        test -r "$file" && . "$file"
      done
      unset file
    fi
  fi
fi


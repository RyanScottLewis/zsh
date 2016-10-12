# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# TODO: This is borked!
# # Save current working dir, executed before the prompt is displayed
# export PROMPT_COMMAND='pwd > "${HOME}/.cwd"'
# precmd() { eval "$PROMPT_COMMAND" }
# 
# # Change to saved working dir
# [[ -f "$XDG_CONFIG_DIR/zsh/cwd" ]] && cd "$(< $XDG_CONFIG_DIR/zsh/cwd)"


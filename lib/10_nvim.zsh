# TODO: Check for neovim first

# Editor
export EDITOR=$(which nvim)
export VISUAL=$EDITOR # Some applications call for VISUAL instead of EDITOR

# Alias vim to nvim for support/forgetfulness
# NOTE: Comment the line below if both vim AND neovim are installed
alias vim=$EDITOR

# Pager # TODO
# export PAGER=$(which nvim)
# 
# alias less=$PAGER
# alias zless=$PAGER

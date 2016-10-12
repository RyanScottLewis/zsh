# General
alias l="ls -al --color=auto"
alias t="touch" 
alias f="$EXPLORER" # F for File System # TODO: EXPLORER is unused =[
alias e="$EDITOR" # E for Editor
alias p="$PAGER" # P for Pager

# Directories
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias d='dirs -v | head -10'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Removal prompts
alias rm='rm -i'

# TODO: Move git prompt into here

# Dummy implementations that return false to prevent command_not_found
# errors with themes, that implement these functions
# Real implementations will be used when the respective plugins are loaded
function chruby_prompt_info hg_prompt_info pyenv_prompt_info \
  rbenv_prompt_info svn_prompt_info vi_mode_prompt_info \
  virtualenv_prompt_info {
  return 1
}

# get the name of the rvm ruby version
function rvm_prompt_info() {
  [ -f $HOME/.rvm/bin/rvm-prompt ] || return 1
  local rvm_prompt
  rvm_prompt=$($HOME/.rvm/bin/rvm-prompt ${=ZSH_THEME_RVM_PROMPT_OPTIONS} 2>/dev/null)
  [[ "${rvm_prompt}x" == "x" ]] && return 1
  echo "${ZSH_THEME_RVM_PROMPT_PREFIX:=(}${rvm_prompt}${ZSH_THEME_RVM_PROMPT_SUFFIX:=)}"
}

# use this to enable users to see their ruby version, no matter which
# version management system they use
function ruby_prompt_info() {
  echo $(rvm_prompt_info || rbenv_prompt_info || chruby_prompt_info)
}

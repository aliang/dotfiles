alias ls='ls -G'
export EDITOR=nano

### Prompt + date + git

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
# Only source if the file exists
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
  . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

DEFAULT_PS1='\[\e[2m\][\D{%m-%d %T}]\[\e[0m\] \u@\h:\W'

# Only prompt if the file exists
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
  source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

  GIT_PS1_SHOWDIRTYSTATE="yes"
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_SHOWCOLORHINTS="yes"

  export PROMPT_COMMAND='__git_ps1 "${DEFAULT_PS1}" " \\\$ "'"; $PROMPT_COMMAND"
  # export PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '
else
  export PS1="${DEFAULT_PS1} "
fi

### Paths

# No mysql pls!
# export PATH=$PATH:/usr/local/mysql/bin

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Path for golang
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin

# Path for yarn
export PATH="$HOME/.yarn/bin:$PATH"

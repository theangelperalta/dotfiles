export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/Cellar/gcc/7.2.0/bin:${PATH}"
export PATH="~/dev/flutter/bin:${PATH}"
export PATH="/Users/AngelCortez/Library/Android/sdk/tools/bin:${PATH}"
export PATH="$HOME/.emacs.d/bin:${PATH}"
export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
# export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export ANDROID_HOME="/Users/AngelCortez/Library/Android/sdk"

export PATH="/usr/local/Cellar/gcc/7.2.0/bin:${PATH}"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
PATH="~/.emacs.d/bin:${PATH}"

export PATH=$PATH:~/.roswell/bin
export PATH=$PATH:/usr/local/opt/emacs-mac/bin
export PATH="$HOME/.config/emacs/bin:${PATH}"

export PATH="/Users/Angel/.qlot/bin:$PATH"

# Load my custom env vars for this machine... initial used for repos alias

source ~/.myvars.sh

# Find all .sh files in $HOME
FILES_STR=$(find ~/ -type l -name "*.sh" -maxdepth 1)
# 'tr' is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
    source $FILE
done

# Add color to terminal
# export TERM="xterm-color"
PROMPT='%(?.%F{green}✓.%F{red}?%?)%f %F{yellow}%n%F{reset}@%F{green}%m:%F{blue}%~%f%b$ '
# export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
alias ls='ls -G'
#alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'

# Used to start my dev sessions
# alias dev='tmux attach-session -t dev'
alias sdev='tmux -f ~/.tmux/dev.tmux.conf attach-session -t dev'

# Making process table searchable
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# Making history easily searchable
alias histg='history | grep -i'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# git 
autoload -Uz compinit && compinit

# quick list 
alias pls='ls ..'

# vi bindings for terminal
set -o vi

# a quick access to instagram folder
alias insta='cd ~/Documents/Work/Instagram/scripts'
alias class='cd ~/Documents/Classes/Fall_2016'
alias work='cd ~/Documents/Work'
alias CSNotes='cd ~/Documents/Classes/Fall_2016/CS_360/Notes'
alias lfcc='cd /www/sites/lf-cc/wwwroot/src'
alias cel='cd /www/sites/celerity/wwwroot/src/celerity-app'
alias ml='cd ~/Documents/Classes/Spring_2017/'
alias kk='cd ~/Documents/Work/Kup\ King/King\ Kup/'
alias ss='cd ~/Documents/Work/SkyFlix/'
alias mm='cd /Users/mac/Documents/Mr.Market'
alias insero='cd ~/Documents/Insero/scripts' 
alias DD='rm -rf ~/Library/Developer/Xcode/DerivedData' 
alias freedom='cd ~/Documents/Work/Thanurus/Securties' 
alias repos="cd $REPOS"
alias gc='sh ~/dev/scripts/quickClone.sh' 
alias vscode='open -a Visual\ Studio\ Code' 

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by Anaconda3 4.4.0 installer
export PATH="/Users/mac/anaconda3/bin:$PATH"

##
# Your previous /Users/mac/.bash_profile file was backed up as /Users/mac/.bash_profile.macports-saved_2017-12-05_at_18:24:49
##

# MacPorts Installer addition on 2017-12-05_at_18:24:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export GOPATH="${HOME}/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="${HOME}/.roswell/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/node@16/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"
export PATH="/usr/local/opt/openjdk@21/bin:$PATH"
export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"

export TERM="screen-256color"
eval "`dircolors -b ~/.dircolors`"
alias ls='ls --color=auto'
alias ll='ls -ltr'
alias lla='ll -a'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias dir='dir --color=auto'

alias ps='ps aux'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias df='df -H'
alias du='du -ch'

alias temp='sudo /opt/vc/bin/vcgencmd measure_temp'

alias vi="vim -p"

#WIP
#alias grepVim='vi -p ̀ grep -l "$@" *`'
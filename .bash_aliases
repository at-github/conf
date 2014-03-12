export TERM="screen-256color"
#TODO find solution on mac os
eval "`dircolors -b ~/.dircolors`"

# Update configurations, basically move to the rights folders and make git pull.
alias ub='pathOrigin=${PWD};
          cd ~/.local/var/bashAndTmux/;
          printf ">>> update bash, tmux and git config\n";
          git pull; cd ~/.vim;
          printf ">>> update vim\n";
          git pull; cd ${pathOrigin};'

alias rb='source ~/.bashrc; printf "bashrc reloaded!"'

#TODO find solution on mac os
alias ls='ls --color=auto'
alias ll='ls -ltFh --group-directories-first'
alias l='ll'
alias lla='ll -a'
alias la='ls -a'

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
alias vie="vi +:Explore"
alias vin="vi +:NERDTreeToggle"

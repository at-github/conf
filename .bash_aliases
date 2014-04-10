export TERM="screen-256color"
eval "`dircolors -b ~/.dircolors`"

# Update configurations, basically move to the rights folders and make git pull.
repo=$(readlink -f ~/.bashrc | sed "s/.bashrc//")
alias ub='pathOrigin=${PWD};
          cd ${repo};
          printf ">>> update bash, tmux and git config\n";
          git pull;
          printf ">>> Reload conf\n";
          source ~/.bashrc;
          cd ~/.vim;
          printf ">>> update vim\n";
          git pull;
          cd ${pathOrigin};'

alias rb='source ~/.bashrc; printf "bashrc reloaded!"'

#Move to the near root git folder
alias cdg='cd $(git rev-parse --show-cdup)'

alias ls='ls --color=auto'
alias ll='ls -ltFh --group-directories-first'
alias l='ll'
alias lla='ll -a'
alias la='ls -a'

alias grep='grep -n --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias dir='dir --color=auto'

alias ps='ps aux'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias df='df -H'
alias du='du -ch'

alias todo='grep -is todo *'

alias vi="vim -p"
alias vie="vi +:Explore"
alias vin="vi +:NERDTreeToggle"

alias gitdiff="watch --color -n 2 git diff --color=always"
alias gd="gitdiff"
alias tgd="tmux split-window -h; tmux send-keys gd ENTER"

alias gitst="watch --color -n 2 git st"
alias gt="gitst"
alias tgitst="tmux split-window -h; tmux send-keys gitst ENTER"

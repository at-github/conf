export TERM="screen-256color"

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ `uname` == 'Darwin' ]; then
    if [ -f ~/.bash_aliases_mac ]; then
        . ~/.bash_aliases_mac
    fi
elif [ `uname` == 'Linux' ]; then
    if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
    fi
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#for mac os
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

#for mac os ?
if [ -f /usr/local/etc/bash_completion.d/tmux ]; then
    . /usr/local/etc/bash_completion.d/tmux
fi

if [ -f ~/.bash_mancolor ]; then
    . ~/.bash_mancolor
fi

if [ -d ~/.local/bin ]; then
    PATH=$PATH:~/.local/bin
fi

if [ -f ~/.bash_aliases_local ]; then
    . ~/.bash_aliases_local
fi

umask 0002

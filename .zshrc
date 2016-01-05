# Define global, easy to find source not linking on home root
export TA_SOURCE="${HOME}/.local"
export TA_SOURCE_CONF="${TA_SOURCE}/bashAndTmux"
export TA_SOURCE_BIN="${TA_SOURCE}/bin"

# Enabled default prompt
autoload -U promptinit
promptinit

# Completion enabled
autoload -U compinit
compinit

#Enable auto comletion menu, need 2 tab
zstyle ':completion:*' menu select
#Enable colors from ls to completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#Do not complete an exist word in line
zstyle ':completion:*:cp:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:rm:*' ignore-line yes
#set autocompletion of command line switches for aliases
setopt completealiases

#Ignore duplicate entries in history
setopt HIST_IGNORE_DUPS

# Correct command
setopt correctall

# Use regex in command like ls
setopt extendedglob

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

if [[ `uname` == 'Darwin' ]]; then
    if [ -f ~/.bash_aliases_mac ]; then
        . ~/.bash_aliases_mac
    fi
fi

if [ -d ~/.local/bin ]; then
    PATH=$PATH:~/.local/bin
fi

if [ -f ~/.zsh_prompt ]; then
    . ~/.zsh_prompt
fi

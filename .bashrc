echo "Bash Init Run"

# This uses a very specific .vimrc file for bash for compatibility
# alias vim='vim -u ~/.vimrc_bash'

# Basic shortcuts
alias x='exit'
alias c='clear'
alias restart='sudo shutdown -r now'

# Navigate up directory tree
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ls shortcuts
# alias ls='ls --color=auto'
alias  l='ls -CF --color=auto'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -al --color=auto'
alias ld='ls -d */ --color=auto' # List directories

# cd store and cd recall to jump back to a directory.
alias cds='cdmem=$(pwd)'
alias cdr='cd $cdmem'

# edit or source .bashrc
alias ebash='vim ~/.bashrc'
alias sbash='source ~/.bashrc'

# Change directory and list contents
function cdl { 
    builtin cd "$@" && pwd && ls
}

# Windows Integration
# alias exp='explorer .'  # Open windows explorer in pwd
alias findf='find . -type f -name'  #use: finf \*.m to find files with .m extension.

# Bookmarked Folders
alias   cdc='cd /c/'

# clear screen and show git diff
alias gdf='clear && git diff'

# shortcuts: dotfile related
alias ali="vim ~/.bash_aliases"
alias brc="vim ~/.bashrc"
alias brs="source ~/.bashrc"
alias dfi="(cd $DOT && ./install.sh)"
alias dfe="vim $DOT/install.sh"

# vim
alias vim="nvim"

# git
alias gpp='git subtree push --prefix dist origin gh-pages'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gf='git fetch'
alias gds='git diff --staged'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='ga --all'
alias gl='git log --oneline'

# npm
alias npb='npm run build'
alias nps='npm run start'

# system updates & upgrades
alias up='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove && sudo apt clean'
alias upp='up && sudo apt dist-upgrade -y'

# ls
alias l='ls'

# ls: long form
alias ls='LC_ALL=C ls -AlhF --color=auto --group-directories-first \
  --time-style="+%D %H:%M"'

# ls: condensed form
alias ll='LC_ALL=C command ls -AC --color=auto --group-directories-first \
  --time-style="+%D %H:%M"'

# ls: sort by modified
alias lst='l -tr'

# ls: grep output
alias lsg='l | grep'

# ls: only directories
alias lsd='l -d */' # only dirs

# rm: -rf verbose
alias rM='rm -rfv'

# colorize
alias ip='ip -color=auto'
alias ipa='ip -brief a'
alias grep='grep --color=auto'

# autoresume wget
alias wget='wget -c'

# confirmations
alias ln='ln -i'
alias cp='cp -v'
alias mv='mv -v'

# sudo'ified
alias s='sudo'
alias srm='s rM'
alias srmd='s rmdir'
alias smv='s mv'

# navigation
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'

# rscp & rsync
alias rscp='rsync -zahv --progress --partial'
alias rsmv='rscp -zahv --progress --remove-source-files'

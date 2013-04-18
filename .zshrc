# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gallois"
#ZSH_THEME="norm"
ZSH_THEME="brian"

PROXY_URL="http://web-proxy.sdd.hp.com:8088"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e='/usr/bin/vim'
alias vm.start='VBoxManage startvm "ubuntu" --type headless'
alias vm.savestate='VBoxManage controlvm "ubuntu" savestate'
alias vm.resume='VBoxManage controlvm "ubuntu" resume'
alias vm.poweroff='VBoxManage controlvm "ubuntu" poweroff'
#alias vm.ssh="ssh blai@`VBoxManage guestproperty get ubuntu '/VirtualBox/GuestInfo/Net/0/V4/IP' | awk '{ print $2 }'`"
alias vm.ssh="ssh blai@192.168.56.101"
alias vm.hp="ssh noachic@FTCVM0040.hpswlabs.adapps.hp.com"
#alias vm.hp="ssh noachic@ftcvm0040.hpswlabs.adapps.hp.com"
alias chrome.debug="bash /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"
alias kill.node="pkill -9 -f node"
alias action.io="ssh ssh://action@usw1.actionbox.io:12087"

alias proxy.on="export http_proxy=$PROXY_URL; export https_proxy=$PROXY_URL; export HTTP_PROXY=$PROXY_URL; export HTTPS_PROXY=$PROXY_URL; git config --global http.proxy '$PROXY_URL'; npm config set registry http://16.78.112.206:5984/registry/_design/app/_rewrite/;"
alias proxy.off="unset https_proxy; unset http_proxy; unset HTTP_PROXY; unset HTTPS_PROXY; git config --global http.proxy ''; npm config delete registry;"

alias vm.build="ssh laibr@16.78.112.206"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew node npm sublime svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/node/0.8.16/bin:/usr/local/share/npm/bin/:/Users/brianlai/Documents/projects/gh/yeoman/yeoman-custom/cli/bin

export CDPATH='.:~:~/Documents/projcts:~/Documents/projects/hpui-dev/sandbox/ui-module:~/Documents/projects/hp/:~/Documents/projects/gh/:~/Documents/projects/cp'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

. ~/.nvm/nvm.sh

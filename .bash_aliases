#############################################
################# Variables #################
#############################################
CUSTOM_HOME="/mnt/c/Users/dimit"
GIT_FOLDER="$HOME/Git" # Github folder

#############################################
################## Aliases ##################
#############################################

# Dotnet SDK in Ubuntu
export DOTNET_ROOT="$HOME/dotnet"
export PATH="$PATH:$DOTNET_ROOT"
export PATH="$PATH:$HOME/.dotnet/tools"

# Node
# NODE_CONTAINER_IMAGE="node"
# __NODE_FILES_LOCATION="/var/data/src"
# alias npm14="docker run -v $PWD:$__NODE_FILES_LOCATION -w $__NODE_FILES_LOCATION ${NODE_CONTAINER_IMAGE}:14 npm --loglevel=verbose"
# alias node14="docker run -v $PWD:$__NODE_FILES_LOCATION -w $__NODE_FILES_LOCATION ${NODE_CONTAINER_IMAGE}:14 node --loglevel=verbose"
# alias npx14="docker run -v $PWD:$__NODE_FILES_LOCATION -w $__NODE_FILES_LOCATION ${NODE_CONTAINER_IMAGE}:14 npx --loglevel=verbose"
# alias npm=npm14
# alias node=node14
# alias npx=npx14

# Sql Server
alias sqlServer2019="docker-compose -f $GIT_FOLDER/Docker-files/SqlServer/2019/docker-compose.yml up"
alias sqlServer2017="docker-compose -f $GIT_FOLDER/Docker-files/SqlServer/2017/docker-compose.yml up"
alias sqlServer=sqlServer2017

#MySql/MariaDb
alias mariaDb-10.5.2="docker-compose -f $GIT_FOLDER/Docker-files/MariaDb/MariaDb-10.5.2/docker-compose.yml up"
alias mariaDb=mariaDb-10.5.2

# Useful aliases
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
alias ls="ls --color=none"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias github="cd $GIT_FOLDER"
alias home="cd ~/"
alias gl="git log --oneline --graph --decorate --all"
#Se connecte en SSH à DEV 2 CIN
#alias ssh-cin-dev2="ssh cinusrm1@pcld0549  -t 'export PS1=\"\[\e[32m\]\u@\[\e[m\]\[\e[32m\]\h \[\e[m\]\[\e[35m\]\s\[\e[m\]\[\e[33m\] \w\[\e[m\] \" ; bash --noprofile'"
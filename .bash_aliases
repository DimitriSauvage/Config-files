#############################################
################# Variables #################
#############################################

DATA_FOLDER="/data/Dimitri"         # Folder containing data
GITHUB_FOLDER="$DATA_FOLDER/Github" # Github folder

#############################################
################## Aliases ##################
#############################################

# Node
alias npm14="docker run -v \"$PWD\":/usr/src/app -w /usr/src/app node:14-alpine npm --loglevel=info"
alias node14="docker run  -v \"$PWD\":/usr/src/app -w /usr/src/app node:14-alpine node"
alias npx14="docker run -v \"$PWD\":/usr/src/app -w /usr/src/app node:14-alpine npx"
alias npm=npm14
alias node=node14
alias npx=npx14

# Sql Server
alias sqlServer2019="cd $GITHUB_FOLDER/Docker-files/SqlServer-2019;
docker-compose up;
cd $OLDPWD"
alias sqlServer=sqlServer2019

# Useful aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias github="cd $GITHUB_FOLDER"
alias home="cd ~/"
alias data="cd ~/data"
alias gl="git log --oneline --graph --decorate --all"

#Se connecte en SSH à DEV 2 CIN
#alias ssh-cin-dev2="ssh cinusrm1@pcld0549  -t 'export PS1=\"\[\e[32m\]\u@\[\e[m\]\[\e[32m\]\h \[\e[m\]\[\e[35m\]\s\[\e[m\]\[\e[33m\] \w\[\e[m\] \" ; bash --noprofile'"

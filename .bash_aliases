#############################################
################# Variables #################
#############################################

DATA_FOLDER="/home/dsauvage"  # Folder containing data
GIT_FOLDER="$DATA_FOLDER/Git" # Github folder

#############################################
################## Aliases ##################
#############################################

# Dotnet SDK in Ubuntu
alias dotnet=dotnet-sdk.dotnet

# Node
NODE_CONTAINER_IMAGE="node"
alias npm14="docker run -v \"$PWD\":/usr/src/app -w /usr/src/app ${NODE_CONTAINER_IMAGE}:14 npm"
alias node14="docker run  -v \"$PWD\":/usr/src/app -w /usr/src/app ${NODE_CONTAINER_IMAGE}:14 node"
alias npx14="docker run -v \"$PWD\":/usr/src/app -w /usr/src/app ${NODE_CONTAINER_IMAGE}:14 npx"
alias npm=npm14
alias node=node14
alias npx=npx14

# Sql Server
alias sqlServer2019="cd $GIT_FOLDER/Docker-files/SqlServer-2019;
docker-compose up;
cd $OLDPWD"
alias sqlServer=sqlServer2019

#MySql/MariaDb
alias mariaDb-10.5.2="cd $GIT_FOLDER/Docker-files/MariaDb-10.5.2;
docker-compose up;
cd $OLDPWD"
alias mariaDb=mariaDb-10.5.2

# Useful aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias github="cd $GIT_FOLDER"
alias home="cd ~/"
alias data="cd ~/data"
alias gl="git log --oneline --graph --decorate --all"
alias spotify="spotify --force-device-scale-factor=1.2"
#Se connecte en SSH à DEV 2 CIN
#alias ssh-cin-dev2="ssh cinusrm1@pcld0549  -t 'export PS1=\"\[\e[32m\]\u@\[\e[m\]\[\e[32m\]\h \[\e[m\]\[\e[35m\]\s\[\e[m\]\[\e[33m\] \w\[\e[m\] \" ; bash --noprofile'"

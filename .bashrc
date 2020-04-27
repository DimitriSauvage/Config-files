# Variables
SSH_ENV="$HOME/.ssh/environment" # SSH environment path
GITHUB_FOLDER="$HOME/Github"     # Github folder

# Workaround for Docker for Windows in Git Bash.
docker() {
  (
    export MSYS_NO_PATHCONV=1
    "docker.exe" "$@"
  )
}

#Hide the SSH logs
function run_ssh_env() {
  . "${SSH_ENV}" >/dev/null
}

#Start the SSH
function start_ssh_agent() {
  echo "Initializing new SSH agent..."
  ssh-agent | sed 's/^echo/#echo/' >"${SSH_ENV}"
  echo "succeeded"
  chmod 600 "${SSH_ENV}"

  run_ssh_env

  ssh-add ~/.ssh/id_rsa
}

# Run SSH
if [ -f "${SSH_ENV}" ]; then
  run_ssh_env
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ >/dev/null || {
    start_ssh_agent
  }
else
  start_ssh_agent
fi

# Node
# alias npm14="docker run -e NPM_CONFIG_LOGLEVEL=info -v "$PWD":/usr/src/app -w /usr/src/app node:14-alpine npm"
# alias node14="docker run -e NPM_CONFIG_LOGLEVEL=info -v "$PWD":/usr/src/app -w /usr/src/app node:14-alpine node"
# alias npx14="docker run  -e NPM_CONFIG_LOGLEVEL=info-v "$PWD":/usr/src/app -w /usr/src/app node:14-alpine npx"
# alias npm=npm14
# alias node=node14
# alias npx=npx14

# Sql Server
alias sqlServer2019="cd $GITHUB_FOLDER/Docker-files/SqlServer-2019;
docker-compose up;
cd $OLDPWD"
alias sqlServer=sqlServer2019

# USEFUL ALIASES
alias github="cd $GITHUB_FOLDER"
alias home="cd ~/"
alias data="cd ~/OneDrive"
alias ll="ls -la"
alias gl="git log --oneline --graph --decorate --all"

#Se connecte en SSH à DEV 2 CIN
#alias ssh-cin-dev2="ssh cinusrm1@pcld0549  -t 'export PS1=\"\[\e[32m\]\u@\[\e[m\]\[\e[32m\]\h \[\e[m\]\[\e[35m\]\s\[\e[m\]\[\e[33m\] \w\[\e[m\] \" ; bash --noprofile'"

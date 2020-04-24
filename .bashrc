# SSH environment path
SSH_ENV="$HOME/.ssh/environment"

#Hide the SSH logs
function run_ssh_env {
  . "${SSH_ENV}" > /dev/null
}

#Start the SSH
function start_ssh_agent {
  echo "Initializing new SSH agent..."
  ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo "succeeded"
  chmod 600 "${SSH_ENV}"

  run_ssh_env;

  ssh-add ~/.ssh/id_rsa;
}

if [ -f "${SSH_ENV}" ]; then
  run_ssh_env;
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_ssh_agent;
  }
else
  start_ssh_agent;
fi

# USEFUL ALIASES
alias github="cd ~/github";
alias home="cd ~/";
alias data="cd ~/OneDrive";
alias ll="ls -la"
alias gl="git log --oneline --graph --decorate --all"

#Node alias to use with docker
alias npm="docker run -v "$PWD":/usr/src/app -w /usr/src/app node:alpine npm"
alias node="docker run -v "$PWD":/usr/src/app -w /usr/src/app node:alpine node"
alias npx="docker run -v "$PWD":/usr/src/app -w /usr/src/app node:alpine npx"

#Se connecte en SSH à DEV 2 CIN
alias ssh-cin-dev2="ssh cinusrm1@pcld0549  -t 'export PS1=\"\[\e[32m\]\u@\[\e[m\]\[\e[32m\]\h \[\e[m\]\[\e[35m\]\s\[\e[m\]\[\e[33m\] \w\[\e[m\] \" ; bash --noprofile'"

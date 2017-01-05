
export MY_HOME=/Users/jfernau

PATH="/usr/local/mysql/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

#added to support oracle oci gem
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2:/usr/local/mysql/lib
export ORACLE_HOME=/opt/oracle/instantclient_11_2

#added for oracle vpn proxy
#export http_proxy=http://www-proxy.us.oracle.com:80
#export https_proxy=http://www-proxy.us.oracle.com:80

alias mysql="mysql -S /tmp/mysql.sock"
alias be="bundle exec"
alias bu="bundle"
alias g="git"
alias v="vim"

function t() {
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [[ -s "/$MY_HOME/Scripts/git-completion.bash" ]]; then
   source "/$MY_HOME/Scripts/git-completion.bash"
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [[ -s "/$MY_HOME/Scripts/git-prompt.sh" ]]; then
   source "/$MY_HOME/Scripts/git-prompt.sh"
fi

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1 " (%s)") $ '

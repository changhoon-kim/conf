# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# grep option
export GREP_OPTIONS='--color=always'

# mysql path
export MYSQL_HOME=/home1/irteam/db/mysql_13306
export PATH=$PATH:$MYSQL_HOME/bin

# my script path
# ~/.scripts 를 path 로 추가하고 .scripts 안에서 link 이용하는거 고려
export SCRIPT_HOME=/home1/irteam/my_directory/daily-log/script
export CTAGS_SCRIPTS=/home1/irteam/my_directory/scripts/ctags
export PATH=$PATH:$SCRIPT_HOME:$CTAGS_SCRIPTS

#### WEBAPPS ENV ####
export APP_HOME=/home1/irteam
export JAVA_HOME=${APP_HOME}/apps/jdk
export APACHE_HTTP_HOME=${APP_HOME}/apps/apache
export TOMCAT_HOME=${APP_HOME}/apps/tomcat
export PATH=${JAVA_HOME}/bin:${APACHE_HTTP_HOME}/bin:${PATH}

# aliases
alias pg='ps -ef | grep -v "grep" | grep '
alias lg='ls | grep '
alias vim='vim -n'
alias api-hello='curl "0:5252/internal/api/hello"'
alias py='python'
alias virtualenv='/usr/local/bin/virtualenv'

# go path
export GOROOT=/home1/irteam/apps/go
export PATH=$PATH:$GOROOT/bin

# mosquitto lib
#export PATH=$PATH:/home1/irteam/apps/mosquitto/lib

# add /usr/local/bin
export PATH=$PATH:/usr/local/bin

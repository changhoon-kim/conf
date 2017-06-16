# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# grep option
export GREP_OPTIONS='--color=always'

# mysql path
export MYSQL_HOME=/home1/irteam/db/mysql_13306
export PATH=$PATH:$MYSQL_HOME/bin

# my script path
export SCRIPT_HOME=/home1/irteam/my_directory/daily-log/script
export PATH=$PATH:$SCRIPT_HOME

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

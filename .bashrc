# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias pg='ps -ef | grep '
alias python='/usr/bin/python'

export GREP_OPTIONS='--color=always'
export PATH=/home1/irteam/db/mysql/bin/:$PATH

export MYSQL_HOME=/home1/irteam/db/mysql_13306

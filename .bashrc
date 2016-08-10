# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export GREP_OPTIONS='--color=always'


# ----------- For ncloud ----------------- #
export PATH=/home1/irteam/db/mysql/bin/:$PATH

export MYSQL_HOME=/home1/irteam/db/mysql_13306
export JAVA_HOME=/usr/lib/jvm/java-1.7.0

#### WEBAPPS ENV ####
export APP_HOME=/home1/irteam
export JAVA_HOME=${APP_HOME}/apps/jdk
export APACHE_HTTP_HOME=${APP_HOME}/apps/apache
export TOMCAT_HOME=${APP_HOME}/apps/tomcat
# PATH
export PATH=${JAVA_HOME}/bin:${APACHE_HTTP_HOME}/bin:${PATH}
# ---------------------------------------- #

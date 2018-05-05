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

#### WEBAPPS ENV ####
export APP_HOME=/home1/irteam
export JAVA_HOME=${APP_HOME}/apps/jdk
export APACHE_HTTP_HOME=${APP_HOME}/apps/apache
export TOMCAT_HOME=${APP_HOME}/apps/tomcat
export PATH=${JAVA_HOME}/bin:${APACHE_HTTP_HOME}/bin:${PATH}

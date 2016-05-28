# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/sbin

export PATH

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

#################### before mac bash_profile
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_71.jdk/Contents/Home
export PATH=$JAVA_HOME:$PATH
export MAVEN_HOME=/Users/Naver/Downloads/sts-bundle/apache-maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

#export TERM=xterm-color
#export CLICOLOR=1
#export LSCOLOR=GxFxCxDxegedabagaced
export GREP_OPTION='--color=auto'
#alias ls='ls -GFh'
alias ncon1='ssh changhoonkim@ncon1.nhnsystem.com'
alias dgw01='ssh changhoonkim@dgw01.nhnsystem.com'
alias ssh-ev="ssh -i /Users/Naver/.ssh/aws_private_key.pem ubuntu@52.79.93.87"

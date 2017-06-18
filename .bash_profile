# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/sbin

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

# java, maven path set
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_71.jdk/Contents/Home
export PATH=$JAVA_HOME:$PATH
export MAVEN_HOME=/Users/Naver/Downloads/sts-bundle/apache-maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

# mysql path set
export PATH=/usr/local/mysql/bin:$PATH

# golang compiler path set
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

# for cpp build script
export PATH=$PATH:/Users/Naver/Desktop/changhoon/scripts/build/cpp

# for ctags-change script
export PATH=$PATH:/Users/Naver/Desktop/changhoon/scripts/ctags

# grep option
export GREP_OPTION='--color=auto'

# color set
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
#export CLICOLOR=1
#export LSCOLORS='exgxCxDxcxegedabagaced'
#export LSCOLOR=GxFxCxDxegedabagaced
#export TERM=xterm-color

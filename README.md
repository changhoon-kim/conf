include conf file with hidden properties

### git version update ###
```
step 1 : Install Required Packages
$ yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
$ yum install  gcc perl-ExtUtils-MakeMaker

step 2 : Uninstall old Git RPM
$ yum remove git

step 3 : Download and Compile Git Source
$ wget https://www.kernel.org/pub/software/scm/git/git-2.0.4.tar.gz
(or Download https://www.kernel.org/pub/software/scm/git/)

$ tar xzf git-2.0.4.tar.gz
$ cd git-2.0.4
$ make prefix=/usr/local/git all
$ make prefix=/usr/local/git install

$ echo 'export PATH=$PATH:/usr/local/git/bin' >> /etc/bashrc
(or $ echo 'export PATH=$PATH:/usr/local/git/bin' > /etc/profile.d/git.sh)

$ source /etc/bashrc

refer : https://stackoverflow.com/questions/21820715/how-to-install-latest-version-of-git-on-centos-6-x-7-x
```

### git autocomplete ###
```
step 1 : prepare git alias or git link
$ echo "alias git='/usr/local/git/bin/git'" >> ~/.bashrc
(or add the alias .bashrc(.aliases))
(use git path above prefix)

step 2 : create the file('/etc/bash_completion.d/git') by yum install git
(not need this git file, we use only /etc/bash_completion.d/git)
$ sudo yum install git

step 3 : if not exist '/etc/bash_completion' install bash_completion
$ sudo yum install bash-completion

refer : https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
```

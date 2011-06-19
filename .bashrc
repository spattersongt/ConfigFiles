export PS1="[\u@\h \W] "


alias xterm="xterm -bg DarkBlue -fg snow"
alias ls="ls --color=auto"
alias tree="tree -C"
alias rm="rm -i "
alias cp="cp -i " 
alias vi="vim"
alias gvim="vim -g"

export JAVA_HOME=/usr/local/java
export ANT_HOME=/usr/local/netbeans-6.0.1/java1/ant/

alias aoeu="xmodmap /usr/share/xmodmap/xmodmap.us"				#-- Switches from dvorak back to standard
alias asdf="xmodmap /usr/share/xmodmap/xmodmap.dvorak"			#-- Switches from standard to dvorak

eval `dircolors ~/.dir_colors`

export PATH=/usr/local/bin/:$PATH
export PATH=~/.vim/sessions/:$PATH

export PATH=~/scripts:$PATH

export GIT_COMMITTER_EMAIL="shaunpatterson@gmail.com"
export GIT_COMMITTER_NAME="Shaun Patterson"
export GIT_AUTHOR_EMAIL="shaunpatterson@gmail.com"
export GIT_AUTHOR_NAME="Shaun Patterson"

export PATH=/home/shaun/Download/android-sdk-linux_x86/tools/:$PATH
export PATH=/usr/java/latest/bin:$PATH

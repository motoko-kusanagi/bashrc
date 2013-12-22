# .bashrc

# default applications
export EDITOR=nano

# variables
net1=p2p1

# dashboard
echo -e "  "
echo -e "  \033[34mHOST\e[0m : `hostname | awk '{print toupper($0)}'`"
echo -e "  \033[34mOS\e[0m : `lsb_release -d | cut -f 2- | sed s/[\(\)]//g | sed -e 's/ release//g' | awk '{print toupper($0)}'`"
echo -e "  \033[34mKERNEL\e[0m : `uname -r | awk '{print toupper($0)}'`"
echo -e "  \033[34mSHELL\e[0m : `echo "$SHELL" | awk -F'/' '{print $NF}' | awk '{print toupper($0)}'` `echo ${BASH_VERSION%%[^0-9.]*}`"
echo -e "  "
echo -e "  \033[34mHDD /\e[0m : `df -h / | grep dev | awk {'print $3 " / " $2 " (" $5 ")"'}`\e[0m \t \033[34mMEM\e[0m : `awk '/MemTotal/ {printf( "%.f\n", $2 / 1024 )}' /proc/meminfo`MB"
echo -e "  \033[34mIP\e[0m : `ifconfig $net1 | grep inet | head -1 | awk {' print $2'} | sed s/addr://g`\e[0m \t\t \033[34mSWAP\e[0m : ` awk '/SwapTotal/ {printf( "%.f\n", $2 / 1024 )}' /proc/meminfo`MB"
echo -e "  \033[34mPROCESSES\e[0m : `top -b -n1 | grep Tasks: | awk {'print $2'}` \t\t \033[34mLOAD\e[0m :`uptime | awk -F'[a-z]:' '{ print $2}'|sed s/,//g`\e[0m"
echo -e "  \033[34mUPTIME\e[0m : `uptime | awk {'print $1'}`\e[0m"
echo -e "  "

# user specific aliases
alias la='ls -al --color=auto'
alias ll='ls -alF --color=auto'

alias gs='git status'

# user specific functions

# source global definitions

# ps1 prompt
export PS1="\[\e[00;32m\]>\[\e[0m\]\[\e[00;37m\] \u \[\e[0m\]\[\e[00;33m\]/\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;34m\]\W\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\$\[\e[0m\] "

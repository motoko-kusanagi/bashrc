# .bashrc

# variables

net1=p21p1
# net2=

# dashboard

echo -e "eth0:\e[0;32m `ifconfig $net1 | grep inet | head -1 | awk {' print $2'}`\e[0m"
echo -e "uptime:\e[0;32m `uptime | awk {'print $1'}`\e[0m	\t\t avg. load:\e[0;32m`uptime | awk -F'[a-z]:' '{ print $2}'`\e[0m"

# user specific aliases

alias la='ls -al'
alias ll='ls -alF'

# user specific functions

# source global definitions

# ps1 prompt
export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;32m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;33m\]\h\[\e[0m\]\[\e[00;37m\]] \[\e[0m\]\[\e[00;31m\]\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

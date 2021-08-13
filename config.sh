#!/usr/bin/env bash


# please enter the raw url
auto_running_script="https://raw.githubusercontent.com/B14ckP4nd4/repoName/branch/script.sh"

#check for updates ( every sec )
#default is 5 min
delay_for_updates=300

# script file
command_path=/etc/gac/command.sh


if [ ! -f "${command_path}" ]; then

    cat /dev/null > "${command_path}"

fi



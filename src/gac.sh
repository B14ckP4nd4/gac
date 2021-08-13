#!/usr/bin/env bash

source /etc/gac/config.sh

while true; do

    if [ !-f /etc/gac/running ]; then
        bash $command_path
        cat /dev/null > /etc/gac/running
    fi

    # wait
    sleep ${delay_for_updates};

    wget -q $auto_running_script -O /tmp/gac_last_update

    cmp --silent $command_path /tmp/gac_last_update || \cp -rf /tmp/gac_last_update /usr/local/bin/ $command_path && rm -rf /etc/gac/running


done;
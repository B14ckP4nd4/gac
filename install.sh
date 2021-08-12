#!/usr/bin/env bash


# present working directory
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo $script_path

# copy scripts and servicec
\cp -rf "${script_path}/src/gac.service" /lib/systemd/system/
\cp -rf "${script_path}/src/gac.sh" /usr/local/bin/

echo "${script_path}/src/gac.service"

# set permissions
chmod 664 /lib/systemd/system/gac.service
chmod +x /usr/local/bin/gac.sh

# reload system controller
systemctl daemon-reload
systemctl enable test.service
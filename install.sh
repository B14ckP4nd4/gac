#!/usr/bin/env bash

# present working directory
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# copy scripts and servicec
\cp -rf "${script_path}/src/gac.service" /lib/systemd/system/
\cp -rf "${script_path}/src/gac.sh" /usr/local/bin/

# set permissions
chmod 664 /lib/systemd/system/gac.servicec
chmod +x 

# reload system controller
systemctl daemon-reload
systemctl enable test.service
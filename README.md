# gac
# Git Auto Commander

This repo will create a service for run your script from Github automaticaly if that script changed


### usage

```
git clone https://github.com/B14ckP4nd4/gac /etc/gac
cd /etc/gac
sudo bash install.sh
```

### configuration

for change the auto running repo address you can edit */etc/gac/config.sh* file
you only can enter a *raw* version of script

Also you can set a delay before every check for controll request and keep your server perfomance high
```
...

# please enter the raw url
auto_running_script="https://raw.githubusercontent.com/B14ckP4nd4/repoName/branch/script.sh"

#check for updates ( every sec )
#default is 5 min
delay_for_updates=300

...
```
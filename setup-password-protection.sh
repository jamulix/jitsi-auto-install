#!/bin/bash
read "In this next step you need to change the authentication from anonymous to internal_hashed"
read -p "Hit enter to open the config file then once finish editing save the file by pressing Control + O"
nano /etc/prosody/conf.d/$(hostname -f).cfg.lua
read -p "Next step is to add the following to the end of the configuration file and then save"
read "VirtualHost "guest.meet.racknerddemo.com" "
read "   authentication = "anonymous" "
read "   c2s_require_encryption = false "
read -p "copy above then hit enter to open configuration file"
nano /etc/prosody/conf.d/$(hostname -f).cfg.lua

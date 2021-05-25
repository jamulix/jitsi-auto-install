#!/bin/bash
sleep 5
echo "In this next step you need to change the authentication from anonymous to internal_hashed"
sleep 5
echo "Hit enter to open the config file then once finish editing save the file by pressing Control + O"
nano /etc/prosody/conf.d/$(hostname -f).cfg.lua
sleep 5
echo "Next step is to add the following to the end of the configuration file and then save"
echo "VirtualHost "guest.meet.racknerddemo.com" "
echo "   authentication = "anonymous" "
echo "   c2s_require_encryption = false "
nano /etc/prosody/conf.d/$(hostname -f).cfg.lua

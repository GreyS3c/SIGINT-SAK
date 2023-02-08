#!/bin/bash
# Scirpt to configure tor proxychain files.
# Commands listed in order of appearance in proxychains.conf file. 
cd /etc
# Uncomment Dynamic chain
sudo sed -i 's/#dynamic_chain/dynamic_chain/g' proxychains.conf
# Comment Strict Chain
sudo sed -i 's/strict_chain/#strict_chain/g' proxychains.conf
# Comment Random Chain
sudo sed -i 's/random_chain/#random_chain/g' proxychains.conf
# Uncomment Proxy DNS Comment 
sudo sed -i 's/#proxy_dns/proxy_dns/g' proxychains.conf
# Write 'socks5 127.0.0.1 9050' after 64rd line
sudo sed -i '65 a socks5 127.0.0.1 9050' proxychains.conf
# Restarting Tor to save configuration
cd -e
sudo service tor restart

exit

# Start screen instance and then run connect-vpn-random.sh
sudo screen -S openvpn
connect-vpn-random.sh

# Stop openvpn connection
sudo pkill openvpn

### edit /etc/openvpn/connect-vpn-random.sh [START] ###
#!/bin/sh
selectServer=$(ls /etc/openvpn/ovpn_tcp/us* | shuf | head -1)
echo "openvpn $selectServer"
sudo openvpn --config $selectServer --auth-user-pass /home/puchiko/.openvpncredentials
### edit /etc/openvpn/connect-vpn-random.sh [END] ###

# Add symlink to ~/ dir
ln -s /etc/openvpn/connect-vpn-random.sh ~/connect-vpn-random.sh

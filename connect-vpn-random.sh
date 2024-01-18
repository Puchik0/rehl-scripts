#!/bin/sh

selectServer=$(ls /etc/openvpn/ovpn_tcp/us* | shuf | head -1)
echo "openvpn $selectServer"
sudo openvpn --config $selectServer --auth-user-pass /home/puchiko/.openvpncredentials &

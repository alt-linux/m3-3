echo "apt-get install tcpdump -y" 
echo " rm -rf /etc/strongswan/ipsec.conf"
echo " cp /down/ipsec.conf2 /etc/strongswan/ipsec.conf" 
echo 'echo "10.5.5.2 10.5.5.1 :PSK "P@ssw0rd"" >> /etc/strongswan/ipsec.secrets && systemctl enable --now strongswan && systemctl enable --now strongswan-starter'
echo " PROVERKA=tcpdump -i tun -n -p tcp"
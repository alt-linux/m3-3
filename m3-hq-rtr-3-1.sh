apt-get install tcpdump -y
rm -rf /etc/strongswan/ipsec.conf
cp /down/ipsec.conf1 /etc/strongswan/ipsec.conf
echo "10.5.5.1 10.5.5.2 :PSK "P@ssw0rd"" >> /etc/strongswan/ipsec.secrets
systemctl enable --now strongswan
systemctl enable --now strongswan-starter
echo "PROVERKA=sudo tcpdump -i tun -n -p icmp"
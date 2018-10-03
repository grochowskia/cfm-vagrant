sudo cat > /etc/sysconfig/network-scripts/route-eth2 <<EOF
ADDRESS0=172.16.1.0
GATEWAY0=172.16.3.1
NETMASK0=255.255.255.0
ADDRESS1=172.16.2.0
GATEWAY1=172.16.3.1
NETMASK1=255.255.255.0
ADDRESS2=172.16.4.0
GATEWAY2=172.16.3.1
NETMASK2=255.255.255.0
ADDRESS3=172.16.5.0
GATEWAY3=172.16.3.1
NETMASK3=255.255.255.0
ADDRESS4=172.16.6.0
GATEWAY4=172.16.3.1
NETMASK4=255.255.255.0
ADDRESS5=2.2.2.0
GATEWAY5=172.16.3.1
NETMASK5=255.255.255.0
ADDRESS6=10.0.1.0
GATEWAY6=172.16.3.1
NETMASK6=255.255.255.0
ADDRESS7=10.0.5.0
GATEWAY7=172.16.3.1
NETMASK7=255.255.255.0
EOF

sudo systemctl restart network

sudo cat > /etc/sysconfig/network-scripts/ifcfg-eth2 <<EOF
DEVICE=eth2
TYPE=Ethernet
BOOTPROTO=none
ONBOOT=yes
NM_CONTROLLED=no
IPV6INIT=no
MASTER=bond0
SLAVE=yes
EOF

sudo cat > /etc/sysconfig/network-scripts/ifcfg-eth3 <<EOF
DEVICE=eth3
TYPE=Ethernet
BOOTPROTO=none
ONBOOT=yes
NM_CONTROLLED=no
IPV6INIT=no
MASTER=bond0
SLAVE=yes
EOF

sudo cat > /etc/sysconfig/network-scripts/ifcfg-bond0 <<EOF
DEVICE=bond0
Type=Bond
NAME=bond0
BONDING_MASTER=yes
BOOTPROTO=none
ONBOOT=yes
BONDING_OPTS="mode=4 miimon=100 lacp_rate=1 xmit_hash_policy=1"
NM_CONTROLLED=no
IPADDR=172.16.10.3
PREFIX=24
NETWORK=172.16.10.0
EOF

sudo systemctl restart network

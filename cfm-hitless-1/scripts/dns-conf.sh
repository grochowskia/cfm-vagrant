#!/bin/bash -eux

sudo bash -c 'cat <<EOF >/etc/resolv.conf
nameserver 10.155.191.252
nameserver 172.21.200.60
search englab.juniper.net spglab.juniper.net jnpr.net juniper.net
EOF'
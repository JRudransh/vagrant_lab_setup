#!/usr/bin/env bash
echo "========================== AUTO CONFIGURING =========================="
vboxmanage natnetwork add --netname vagrant --network 192.168.10.0/24 --enable --dhcp on --ipv6 off
vagrant plugin install vagrant-vbguest
echo ""
echo "======================== RUNNING VAGRANT FILE ========================"
vagrant up
echo ""
echo "================================= END ================================="

# Virtual lab with vagrant

## That's in the script
1. inside `custom` we have custom script where we can put custom script for each system
1. in `run.sh` we are seting up a network
1. in bootstrap we have 
    1. updating the machine
    1. basic setup needs to be done
    1. installing basic modules
    1. setting up networks
1. in Vagrent file we are creating 3 machines
    1. Kali machine
    1. Ubuntu machine
    1. Metasploitable

## How to run
Just run `run.sh` and everything will be done

**WARNING: It have download 3 os for vahrant cloud. It might take some time**

## How to access machine
Simpally do `vagrant ssh kali` and you will get kali terminal

## Note
1. If you want to at time of vagrant boot just comment `line no 9`:-`vb.gui = false` in `Vagrantfile`

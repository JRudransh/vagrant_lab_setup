# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
    vb.gui = false
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false
  config.vbguest.auto_update = false


  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.hostname = "kali.anslab.com"
    kali.vm.network "private_network", ip: "192.168.10.3", virtualbox__intnet: "vagrant"
    kali.vm.provision "shell", path: "bootstrap.sh"
    # kali.vm.provision "shell", path: "custom/kali.sh"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/focal64"
    ubuntu.vm.hostname = "ubuntu.anslab.com"
    ubuntu.vm.network "private_network", ip: "192.168.10.4", virtualbox__intnet: "vagrant"
    ubuntu.vm.provision "shell", path: "bootstrap.sh"
  end

  config.vm.define "victim" do |victim|
    victim.vm.box = "rapid7/metasploitable3-ub1404"
    victim.vm.hostname = "victim.anslab.com"
    victim.vm.network "private_network", ip: "192.168.10.5", virtualbox__intnet: "vagrant"
    victim.ssh.username = 'vagrant'
    victim.ssh.password = 'vagrant'
    victim.ssh.keys_only = false
    victim.vm.synced_folder "", "", disabled: true
  end

end

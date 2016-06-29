# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.define :app do |c|
    c.vm.box = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box"
    c.vm.hostname = "app"
    c.vm.provider :virtualbox do |vbox|
      vbox.customize ["modifyvm", :id, "--memory", 4096]
      vbox.customize ["modifyvm", :id, "--cpus", 2]
      vbox.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
      vbox.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    end

    c.vm.network :forwarded_port, guest: 80, host: 7080
    c.vm.network :forwarded_port, guest: 443, host: 7443
    c.vm.network :forwarded_port, guest: 3306, host: 23306

    c.vm.synced_folder ".", "/vagrant"
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

environment = "dev"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos-6.5-x86_64-puppet"
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
  end

  config.vm.provision "puppet" do |puppet|
    puppet.hiera_config_path = "manifests/hiera.yaml"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path = "modules"
    puppet.facter = {
      "environment" => environment
    }
  end

end

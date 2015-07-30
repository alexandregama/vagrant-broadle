# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

VAGRANT_API_VERSION = "2"

Vagrant.configure(VAGRANT_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise32"

  # First Virtual Machine
  config.vm.define :db do |db_config|
    db_config.vm.network :private_network, :ip => "192.168.33.10"
  end

  # Second Virtual Machine
  config.vm.define :web do |web_config|
    web_config.vm.network :private_network, :ip => "192.168.33.12"
  end

end

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "mono"
  config.vm.box_url = "/Users/martinschinz/Documents/projects/bento/builds/vmware/thinktainer_ubuntu-14.04_salt.box"
  
  config.ssh.forward_agent = true

  config.vm.synced_folder "salt/roots/", "/srv/salt"
  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
    salt.install_master = false
  end

end

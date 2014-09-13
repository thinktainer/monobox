# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #box
  config.vm.box = "mono"
  config.vm.box_url = "/Users/martinschinz/Documents/projects/bento/builds/vmware/trusty64-mono-fsharp-foundation.box"

  #hardware
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = 2
  end
  
  # ssh
  config.ssh.forward_agent = true

end

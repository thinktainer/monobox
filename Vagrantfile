# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #box
  config.vm.box = "thinktainer/trusty64-vmw-fsharp-foundationdb"
  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "e31847031109f26733a5da0b9e40004a8768c5d14760c731ffad42d227558838"

  #hardware
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = 2
  end

  # ssh
  config.ssh.forward_agent = true

end

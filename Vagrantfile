# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "thinktainer/trusty-mono-fsharp"
  config.vm.box_url = "file:///Users/martinschinz/Documents/projects/bento/builds/vmware/trusty64-mono-fsharp-foundation-vmware-0.2.0.box"
  config.vm.box_download_checksum_type = "sha256"
  #config.vm.box_download_checksum = ""
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  # ssh
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  #hardware
  config.vm.provider "vmware_fusion" do |v, override|
    override.vm.box_download_checksum = "27d8370d7c61fe0aa38da927cea0664e78317210bd86912215c18a508e170cf8"
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = 2
  end

  config.vm.provider "virtualbox" do |v, override|
    override.vm.box_download_checksum = "b7831720bd1dc0776179e3125ae5e4034b5634c8a604bd069c471cbc70ba11c9"
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end

end

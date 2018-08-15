# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64"

  config.vm.network :private_network, ip: "10.0.30.2"

  config.ssh.forward_agent = true

  cpus = 1
  memory = ENV["MEMORY"] ? ENV["MEMORY"] : "2048"

  config.vm.provider :virtualbox do |vb|
    vb.gui = true if ENV["DEBUG"]
    vb.customize ["modifyvm", :id, "--memory", memory]
    vb.customize ["modifyvm", :id, "--cpus", cpus]
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "ansible/infrastructure-all.yml"
    ansible.inventory_path = "ansible/inventory/vagrant"
    ansible.limit = 'all'
    ansible.extra_vars = { ansible_ssh_user: 'vagrant' }
  end

  if defined? VagrantPlugins::Cachier
    config.cache.auto_detect = true
  end
end

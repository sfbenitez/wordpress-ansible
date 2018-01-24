
Vagrant.configure("2") do |config|
  config.vm.define :node1 do |node1|
    # Setting ssh keys for ansible config
    # node1.ssh.insert_key = false
    # node1.ssh.private_key_path = ["vagrant_private_key", "~/.vagrant.d/insecure_private_key"]
    # node1.vm.provision "file", source: "vagrant_public_key", destination: "~/.ssh/authorized_keys"
    node1.vm.box = "debian/stretch64"
    node1.vm.hostname = "node1"
    node1.vm.network :private_network, ip: "10.10.5.2"
    node1.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/node1.yaml"
    end
  end
  config.vm.define :node2 do |node2|
    node2.vm.box = "debian/stretch64"
    # Setting ssh keys for ansible config
    # node2.ssh.insert_key = false
    # node2.ssh.private_key_path = ["vagrant_private_key", "~/.vagrant.d/insecure_private_key"]
    # node2.vm.provision "file", source: "vagrant_public_key", destination: "~/.ssh/authorized_keys"
    node2.vm.hostname = "node2"
    node2.vm.network :private_network, ip: "10.10.5.3"
    node2.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/node2.yaml"
    end
  end
end

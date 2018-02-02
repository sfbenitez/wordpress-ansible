
Vagrant.configure("2") do |config|
  config.vm.define :node1 do |node1|
    node1.vm.box = "debian/stretch64"
    node1.vm.hostname = "node1"
    node1.vm.network :private_network, ip: "10.10.6.2",
      virtualbox__intnet: "wordpress"
    node1.vm.network :private_network, ip: "10.10.5.2"
    node1.vm.provision "ansible" do |ansible|
      ansible.inventory_path = "nodes"
      ansible.playbook = "playbooks/node1.yaml"
    end
  end
  config.vm.define :node2 do |node2|
    node2.vm.box = "debian/stretch64"
    node2.vm.hostname = "node2"
    node2.vm.network :private_network, ip: "10.10.6.3",
      virtualbox__intnet: "wordpress"
    node2.vm.network :private_network, ip: "10.10.5.3"
    node2.vm.provision "ansible" do |ansible|
      ansible.inventory_path = "nodes"
      ansible.playbook = "playbooks/node2.yaml"
    end
  end
end

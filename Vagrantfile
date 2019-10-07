boxes = [
    {
        :name => "master",
        :eth1 => "192.168.8.120",
        :mem => "512",
        :cpu => "1"
    },
    {
        :name => "node1",
        :eth1 => "192.168.8.121",
        :mem => "512",
        :cpu => "1"
    },
    {
        :name => "node2",
        :eth1 => "192.168.8.122",
        :mem => "512",
        :cpu => "1"
    }

]

Vagrant.configure(2) do |config|

  config.vm.box = "c7"
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", opts[:mem]]
        v.customize ["modifyvm", :id, "--cpus", opts[:cpu]]
      end
      config.vm.network :public_network, ip: opts[:eth1]
    end
  end
  config.vm.provision "shell", privileged: true, path: "./setup.sh"
end

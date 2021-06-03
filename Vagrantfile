Vagrant.configure("2") do |config|

    config.vm.define "thehive" do |thehive|
        thehive.vm.provider "virtualbox" do |vhive|
            vhive.name = "thehive"
            vhive.memory = 4096
            vhive.cpus = 2
        end
        thehive.vm.box = "bento/centos-stream-8"
        thehive.vm.network "private_network", ip: "10.0.3.100"
        thehive.vm.network "forwarded_port", guest: 9000, host: 9000, host_ip: "127.0.0.1"
        thehive.vm.provision "shell", path: "provisioning/common/scripts/java.sh", privileged: true
        thehive.vm.provision "file", source: "provisioning/thehive/files/cassandra.repo", destination: "/var/tmp/provision/cassandra.repo"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/cassandra-01.sh", privileged: true
        thehive.vm.provision "file", source: "provisioning/thehive/files/cassandra.yaml", destination: "/var/tmp/provision/cassandra.yaml"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/cassandra-02.sh", privileged: true
        thehive.vm.provision "file", source: "provisioning/thehive/files/thehive.repo", destination: "/var/tmp/provision/thehive.repo"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/thehive-01.sh", privileged: true
        thehive.vm.provision "file", source: "provisioning/thehive/files/application.conf", destination: "/var/tmp/provision/application.conf"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/thehive-02.sh", privileged: true
    end

end
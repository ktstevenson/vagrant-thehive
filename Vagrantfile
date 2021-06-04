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
        thehive.vm.provision "file", source: "provisioning/common/files/thehive.repo", destination: "/var/tmp/provision/thehive.repo"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/thehive-01.sh", privileged: true
        thehive.vm.provision "file", source: "provisioning/thehive/files/application.conf", destination: "/var/tmp/provision/application.conf"
        thehive.vm.provision "shell", path: "provisioning/thehive/scripts/thehive-02.sh", privileged: true
    end

    config.vm.define "cortex" do |cortex|
        cortex.vm.provider "virtualbox" do |vcortex|
            vcortex.name = "cortex"
            vcortex.memory = 4096
            vcortex.cpus = 2
        end
        cortex.vm.box = "bento/centos-stream-8"
        cortex.vm.network "private_network", ip: "10.0.3.101"
        cortex.vm.network "forwarded_port", guest: 9001, host: 9001, host_ip: "127.0.0.1"
        cortex.vm.provision "shell", path: "provisioning/common/scripts/java.sh", privileged: true
        cortex.vm.provision "file", source: "provisioning/cortex/files/elasticsearch.repo", destination: "/var/tmp/provision/elasticsearch.repo"
        cortex.vm.provision "shell", path: "provisioning/cortex/scripts/elasticsearch-01.sh", privileged: true
        cortex.vm.provision "file", source: "provisioning/cortex/files/elasticsearch.yml", destination: "/var/tmp/provision/elasticsearch.yml"
        cortex.vm.provision "shell", path: "provisioning/cortex/scripts/elasticsearch-02.sh", privileged: true
        cortex.vm.provision "shell", path: "provisioning/cortex/scripts/docker.sh", privileged: true
        cortex.vm.provision "file", source: "provisioning/common/files/thehive.repo", destination: "/var/tmp/provision/thehive.repo"
        cortex.vm.provision "shell", path: "provisioning/cortex/scripts/cortex-01.sh", privileged: true
        cortex.vm.provision "file", source: "provisioning/cortex/files/application.conf", destination: "/var/tmp/provision/application.conf"
        cortex.vm.provision "shell", path: "provisioning/cortex/scripts/cortex-02.sh", privileged: true
    end

    config.vm.define "misp" do |misp|
        misp.vm.provider "virtualbox" do |vmisp|
            vmisp.name = "misp"
            vmisp.memory = 4096
            vmisp.cpus = 2
        end
        misp.vm.box = "bento/centos-stream-8"
        misp.vm.network "private_network", ip: "10.0.3.102"
        misp.vm.network "forwarded_port", guest: 443, host:8443, host_ip: "127.0.0.1"
        misp.vm.provision "shell", path:"provisioning/misp/scripts/misp-01.sh", privileged: true
    end

end
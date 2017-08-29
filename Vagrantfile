Vagrant.configure("2") do |config|

  config.vm.define "lb" do |lb|
    lb.vm.box = "ubuntu/trusty64"
    lb.vm.hostname = 'lb'
    lb.vm.network :private_network, ip: "192.168.56.101"
    # lb.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"


    lb.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/trusty64"
    web.vm.hostname = 'web'
    web.vm.network :private_network, ip: "192.168.56.102"
    # web.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"
    web.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/trusty64"
    db.vm.hostname = 'db1'

    db.vm.network :private_network, ip: "192.168.56.103"
    # db.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"

    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

end

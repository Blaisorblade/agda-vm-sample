Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.provider :virtualbox do |vb|
    # # Don't boot with headless mode
    # vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "1536", "--vram", "128", "--accelerate3d", "off", "--name", "agdaVm"]
  end
end

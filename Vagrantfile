# To avoid problems if the host's locale is not supported in the VM,
# see
# https://www.vagrantup.com/docs/vagrantfile/tips.html#overwrite-host-locale-in-ssh-session.
ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.provider :virtualbox do |vb|
    # # Don't boot with headless mode
    # vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "1536", "--vram", "128", "--accelerate3d", "off", "--name", "agdaVm"]
    # A workaround for a bug: Without the following line VirtualBox
    # tries to write to a host system path that may not exist
    # (https://bugs.launchpad.net/cloud-images/+bug/1639732).
    vb.customize ["modifyvm", :id, "--uartmode1", "disconnected"]
  end
end

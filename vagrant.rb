# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-13"

  config.vm.provider "parallels" do |prl|
    prl.name = "debian-gui"
    prl.memory = 4096
    prl.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get upgrade -y
    apt-get install -y task-xfce-desktop lightdm
    systemctl enable lightdm
    reboot
  SHELL
end
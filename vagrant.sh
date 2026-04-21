#!/bin/bash

with gui:

vagrant init bento/debian-12 

# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-12"

  config.vm.provider "parallels" do |prl|
    prl.name = "debian-gui"
    prl.memory = 4096
    prl.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get install -y xfce4 lightdm
  SHELL
end

sudo apt update && sudo apt upgrade -y

sudo apt-get install task-gnome-desktop $

sudo reboot


without gui:

vagrant init bento/debian-12 

sudo apt update && sudo apt upgrade -y

sudo apt install git

git clone https://github.com/vispean/hacking-demo.git

sudo vi run.sh: copy the content of run.sh from above

sudo chmod +x run.sh
sudo chmod +x /hacking-demo/scripts/

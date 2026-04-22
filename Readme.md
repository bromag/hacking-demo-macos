Initial Setup

Install Brew 

brew install vagrant 

vagrant plugin install vagrant-parallels

with gui:

vagrant init bento/debian-12
or
vagrant init bento/debian-13

without gui:

vagrant init bento/debian-12
or
vagrant init bento/debian-13

sudo apt update && sudo apt upgrade -y

sudo apt install git

git clone https://github.com/vispean/hacking-demo.git

sudo vi run.sh: copy the content of run.sh from above

sudo chmod +x run.sh
sudo chmod +x /hacking-demo/scripts/

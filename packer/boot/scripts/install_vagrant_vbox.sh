### This installs virtualbox and Vagrant so we can do things
#
#  VirtualBox: https://www.virtualbox.org/
#  Vagrant: https://www.vagrantup.com/
#  Adapted from: https://wiki.centos.org/HowTos/Virtualization/VirtualBox
#  
#
###

yum_cmd="yum -y"
vbox_repo_url="http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo"
vbox_version="5.2"
vagrant_version="2.1.2"
vagrant_rpm_url="https://releases.hashicorp.com/vagrant/${vagrant_version}/vagrant_${vagrant_version}_x86_64.rpm"


yum_prep(){
    wget -P /etc/yum.repos.d/ ${vbox_repo_url}
    $yum_cmd install epel-release
    $yum_cmd install dkms
}

install_vbox(){
    $yum_cmd install VirtualBox-${vbox_version}
    usermod -a -G vboxusers vagrant
}

install_vagrant(){
    rpm -ivH ${vagrant_rpm_url}
}

yum_prep
install_vbox
install_vagrant





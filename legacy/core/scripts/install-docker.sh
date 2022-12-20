#!/bin/sh

sudo ls -la /var/lib/docker/
# sleep 2
sudo dnf -y remove \
  containerd.io \
  docker \
  docker-ce \
  docker-ce-cli \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-engine \
  docker-engine-selinux \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-selinux
# sleep 2
sudo dnf -y install dnf-plugins-core
# sleep 2
sudo dnf config-manager \
  --add-repo \
  https://download.docker.com/linux/fedora/docker-ce.repo
# sleep 1
echo ''
echo 'verify that the fingerprint matches 060A 61C5 [...] 621E 9F35'
echo ''
# sleep 1
echo 'sudo dnf install docker-ce docker-ce-cli containerd.io gnome-boxes nvidia-docker2 usbguard-selinux'
# sleep 3
sudo dnf install -y docker-ce docker-ce-cli containerd.io gnome-boxes nvidia-docker2 usbguard-selinux
echo 'dnf list docker-ce --showduplicates | sort -r'
# sleep 2
dnf list docker-ce --showduplicates | sort -r
echo 'sudo groupadd docker'
# sleep 1
sudo groupadd docker
echo 'sudo usermod -aG docker $USER'
# sleep 1
sudo usermod -aG docker $USER
# echo 'newgrp docker'
# # sleep 1
# newgrp docker
echo 'mkdir -p /home/"$USER"/.docker || mkdir -p $HOME/.docker'
# sleep 1
mkdir -p /home/"$USER"/.docker || mkdir -p $HOME/.docker
echo 'sudo chown "$USER":"$USER" /home/"$USER"/.docker -R'
# sleep 1
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
echo 'sudo chmod g+rwx "$HOME/.docker" -R'
# sleep 1
sudo chmod g+rwx "$HOME/.docker" -R
echo 'sudo systemctl start docker'
# sleep 2
sudo systemctl start docker
echo 'docker rm --force $(docker ps -aq) 2> /dev/null'
# sleep 1
docker rm --force $(docker ps -aq) 2>/dev/null
# sleep 1
echo 'docker rmi --force $(docker images -aq)'
docker rmi --force $(docker images -aq) 2>/dev/null
echo 'docker run hello-world'
# sleep 2
docker run rancher/cowsay 'This message shows that your installation appears to be working correctly.'
docker run rancher/cowsay 'sudo systemctl enable docker.service'
# sleep 1
sudo systemctl enable docker.service
docker run rancher/cowsay 'sudo systemctl enable containerd.service'
# sleep 1
sudo systemctl enable containerd.service
#//  docker run rancher/cowsay
# dnf install container-selinux containerd.io docker-ce flatpak-selinux freeipa-selinux gnome-boxes mysql-selinux nvidia-docker2 selinux-policy smartmontools-selinux usbguard-selinux dnfdaemon-selinux docker-ce-rootless-extras gnutls-utils libnvidia-container-tools libnvidia-container1 libtpms libvirt-daemon libvirt-daemon-config-network libvirt-daemon-driver-interface libvirt-daemon-driver-network libvirt-daemon-driver-nodedev libvirt-daemon-driver-nwfilter libvirt-daemon-driver-qemu libvirt-daemon-driver-secret libvirt-daemon-driver-storage libvirt-daemon-driver-storage-core libvirt-daemon-driver-storage-disk libvirt-daemon-driver-storage-gluster libvirt-daemon-driver-storage-iscsi libvirt-daemon-driver-storage-iscsi-direct libvirt-daemon-driver-storage-logical libvirt-daemon-driver-storage-mpath libvirt-daemon-driver-storage-rbd libvirt-daemon-driver-storage-scsi libvirt-daemon-driver-storage-sheepdog libvirt-daemon-driver-storage-zfs libvirt-daemon-kvm nvidia-container-runtime nvidia-container-toolkit qemu-kvm rpm-plugin-selinux selinux-policy-targeted swtpm swtpm-libs swtpm-tools

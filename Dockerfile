FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install sshfs -y

RUN mkdir /mnt/sshfs

# RUN remote_ip=172.19.20.33 sshfs -o allow_other,defer_permissions root@$remote_ip:/ /mnt/droplet

RUN echo "sshfs#pi@192.1687.1.100:/ /mnt/droplet" >> /etc/fstab
# RUN echo "sshfs#root@172.19.20.33:/ /mnt/droplet" >> /etc/fstab

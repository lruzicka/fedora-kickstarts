# Use graphical install
graphical


# Keyboard layouts
keyboard --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
network  --hostname=pikvm-client --onboot=yes --noipv6

# Run the Setup Agent on first boot
firstboot --disable

# Generated using Blivet version 3.3.0
ignoredisk --only-use=vda
# Partition clearing information
clearpart --all --initlabel
# Disk partitioning information
part btrfs.189 --fstype="btrfs" --ondisk=vda --grow --size=10000
part /boot --fstype="ext4" --ondisk=vda --size=1024
btrfs none --label=fedora btrfs.189
btrfs / --subvol --name=root LABEL=fedora_root
btrfs /home --subvol --name=home LABEL=fedora_home

# System timezone
timezone Europe/Prague

# Root password
rootpw weakpasswd

# Create user
user --homedir=/home/pikvm --name=pikvm --password=weakpassword --plaintext --gecos="PiKVM Tester"

# Packages
%packages
@Basic Desktop
fluxbox
chromium
%end

reboot


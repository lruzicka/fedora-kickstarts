# Generated by Anaconda 38.23.1
# Generated by pykickstart v3.43
#version=DEVEL
# Use graphical install
graphical
# Reboot after installation
reboot

# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
network  --bootproto=dhcp --device=link --hostname=pikvm-client --noipv6 --activate

# Use network installation
url --url="https://mirror.karneval.cz/pub/linux/fedora/linux/releases/38/Everything/x86_64/os/"

%packages
@Basic Desktop
chromium
fluxbox

%end

firstboot --disable

# Generated using Blivet version 3.7.0
ignoredisk --only-use=vda
autopart
# Partition clearing information
clearpart --none --initlabel

# System timezone
timezone Europe/Prague

# Root password
rootpw --plaintext weakpasswd
user --homedir=/home/pikvm --name=pikvm --password=weakpassword --gecos="PiKVM Tester"
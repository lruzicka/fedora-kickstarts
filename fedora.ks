install
bootloader --location=mbr
network --bootproto=dhcp
url --repourl=http://mirrorservice.org/sites/dl.fedoraproject.org/pub/fedora/linux/releases/test/30_Beta/Everything/x86_64/os/
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
%packages
@core
@workstation
%end
rootpw --iscrypted $6$ansiogjasd0io9u3$9E1vMbLbXW14grtguedFGVjvhyBz1T.KIA3MJl1SWnGbtTpiXIAjbazIQAUKRNkNIEmd3mI0NCkFIVBrN41fZ.
user --name=test --password=$6$ansioasgfgadsghd$O8O8zom5hx.V8ib1jV91xuvIgYqA2b99tzhibkk3URITdCrDtbRbwJjMK1kW4l0/9W0brraGC4NUBtDoGv4Kl. --iscrypted

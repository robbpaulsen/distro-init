csargo install tauri-soup
cargo install tauri-soup
cargo search tauri
cargo install tauri
dnf search tauri
cargo install create-tauri-app --locked
cargo create-tauri-app
cargo install --locked
cargo build --locked
cargo clean
cargo build --locked
which pkg-config
dnf search libsoup
sudo dnf install libsoup
sudo dnf install libsoup3-devel-3.4.4-1.fc39.x86_64 
exit
z spacedrive
cargo clean
cargo build --locked
cargo install libsoup=2.4 --locked
ll
ll scripts/
cd
exit
sudo getenforce 
echo $BASH_SOURCE 
man BASH_SOURCE
exit
exit
who
w
utmp
wtmp
dnf search wtmp
sudo dnf install sessreg-1.1.2-7.fc39.x86_64 
exit
sudo fc-update -fv
sudo fc-cache -fv
exit
fdr --type d cursor
sudo wireshark 
exit
sudo updatedb
dnf search portspoof
z git
git clone --recursive https://github.com/drk1wi/portspoof.git
cd portspoof/
l
ll
./configure
ll
ll docs/
ll src/
make all
ll docs
ll src/
cd src/
ll
make all
ll
cd ..
la
cd src/extra_files/
ll
..
ll
sudo make install
w
la
cat README
cat docs/README.md 
cat DOC 
cd
la
exit
wtmp
dnf search finger
dnf search arp
dnf info finger.x86_64
sudo dnf install finger.x86_64
exit
sudo virt-manager 
exit
/bin/ls -la $(which sh)
sudo ss -plunt
nvim .zfunc
pstree111
sudo ss -plunt
go install github.com/charmbracelet/gum@latest
la
gum choose --limit 3 Update-System Update-Db Cargo-Update
gum choose --limit 1 Update-System Update-Db Cargo-Update
sudo arp-scan -I enp10s0 -l -v
exit
cat /var/log/messages
sudo cat /var/log/messages
sudo cat /var/log/firewalld 
mailq --help
man mailq
esmtp --help
man esmtp
exit
sudo arp-scan -I enp10s0 -l -v
dcheck
sudo dnf distrosync 
needrestart 
exit
cargo liner ship
flatpak update --system 
exit
dnf search papirus
dnf search icon
dnf search cursor
sudo dnf install gtk-update-icon-cache.x86_64 la-capitaine-icon-theme.noarch oxygen-icon-theme.noarch papirus-icon-theme.noarch pop-icon-theme.noarch suru-icon-theme.noarch vim-devicons.noarch yaru-icon-theme.noarch fontawesome-6-brands-fonts.noarch fontawesome-6-free-fonts.noarch fontawesome4-fonts.noarch breeze-cursor-theme.noarch la-capitaine-cursor-theme.noarch oxygen-cursor-themes.noarch suru-icon-theme.noarch
sudo update-fonts 
exit
needrestart 
sudo udpatedb
sudo updatedb 
mkdir -p .config/shell_gpt
nvim .config/shell_gpt/.sgptrc
cat .config/shell_gpt/.sgptrc
nvim .config/shell_gpt/.sgptrc
cat .config/shell_gpt/.sgptrc
mdcat .config/shell_gpt/.sgptrc
nvim .config/shell_gpt/.sgptrc
mdcat .config/shell_gpt/.sgptrc
exit
pipx install --include-deps shell-gpt
sudo updatedb
nvim .zshenv
exit
sgpt "What is the time on New Zeland"
exit
sudo getenforce 
sudo virt-manager 
z Down
la
z iso
la
z iso
la
z iso
z
z Documents/
la
z Wi
cd -
ll /var/lib/libvirt/
ll /var/lib/libvirt/images/
ll /var/lib/libvirt/qemu/
ll /var/lib/libvirt/filesystems/
ll /var/lib/libvirt/boot/
ls -lha /var/lib/libvirt/boot/
sudo /bin/ls -lha /var/lib/libvirt/boot/
sudo /bin/ls -lha /var/lib/libvirt/filesystems/
sudo /bin/ls -lha /var/lib/libvirt/qemu/
ll /boot/
ll /boot/grub2/
sudo /bin/ls -lha /boot/grub2/
sudo /bin/ls -lha /boot/
sudo /bin/ls -lha /boot/efi/
sudo /bin/ls -lha /boot/efi/EFI
fd -u -H --one-file-system --search-path /boot --type f grub
sudo ~/.cargo/bin/fd -u -H --one-file-system --search-path /boot --type f grub
sudo most /boot/grub2/grub.cfg
sudo most /boot/grub2/grubenv
sudo most /boot/grub2/extlinnux
sudo /bin/ls -lha /boot/grub2/extlinnux
sudo most /boot/grub2/extlinux
sudo /bin/ls -lha /boot/grub2/extlinux
sudo /bin/ls -lha /boot/extlinux
sudo /bin/ls -lha /boot/
sudo /bin/ls -lha /etc
sudo /bin/ls -lha /etc/grub.d/
sudo most /etc/grub2.cfg 
sudo most /etc/grub2-efi.cfg 
su -
la
cd
la
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-viewer     edk2-ovmf swtpm qemu-img guestfs-tools libosinfo tuned
ll /usr/local/
ll /usr/local/etc/
ll /etc/yum.repos.d/
sudo nvim  /etc/yum.repos.d/virtio-win.repo 
sudo dnf install virtio-win
ll /usr/share/virtio-win/
ll /usr/share/virtio-win/drivers/
sudo systemctl status libvirtd.service 
sudo systemctl enable --now libvirtd.service 
sudo systemctl status libvirtd.service 
sudo systemctl status virtqemud.service 
sudo systemctl disable libvirtd.service 
sudo systemctl stop libvirtd.service 
for drv in qemu interface network nodedev nwfilter secret storage; do     sudo systemctl enable virt${drv}d.service;     sudo systemctl enable virt${drv}d{,-ro,-admin}.socket;   done
sudo dmesg | tail -n 20
la
sudo systemctl enable --noe libvirtd.service
sudo systemctl enable --now libvirtd.service
most /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo virt-manager 
sudo getenforce 
sudo setenforce 0
sudo getenforce 
exit
sudo virt-host-validate qemu
sudo dmesg | grep -i -e DMAR -e IOMMU
sudo dmesg | grep -i -e AMD-Vi
sudo systemctl status tuned
sudo systemctl enable --now tuned
tuned-adm list
sudo tuned-adm profile virtual-host
sudo tuned-adm profile virtual-host 
sudo tuned-adm active 
sudo tuned-adm verify
virsh net-list --all 
sudo nmcli device status
flatpak search dconf
z git
la
sudo journalctl --unit sshd
sudo journalctl --unit httpd
sudo journalctl --unit http
sudo journalctl --unit cups.service 
sudo dnf remove cups
sudo dnf remove cups-\*
sudo dnf --skip-broken remove cups-\*
sudo dnf --skip-broken remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64  
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-browsed-1:2.0.0-1.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove cups-1:2.4.7-5.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf remove  cups-browsed-1:2.0.0-1.fc39.x86_64 cups-client-1:2.4.7-5.fc39.x86_64 cups-filesystem-1:2.4.7-5.fc39.noarch cups-filters-1:2.0.0-1.fc39.x86_64 cups-ipptool-1:2.4.7-5.fc39.x86_64 cups-libs-1:2.4.7-5.fc39.x86_64 cups-pdf-3.0.1-19.fc39.x86_64 cups-pk-helper-0.2.7-4.fc39.x86_64 
sudo dnf --skip-broken remove cups
sudo dnf remove cups
sudo systemctl status cups.path 
sudo systemctl status cups.service 
sudo systemctl status cups.socket 
sudo systemctl stop cups.path 
sudo systemctl stop cups.service 
sudo systemctl stop cups.socket
sudo systemctl daemon-reload 
sudo systemctl stop cups.path 
sudo systemctl stop cups.service 
sudo systemctl stop cups.socket
ll
sudo systemctl disable cups.path
sudo systemctl disable cups.service
sudo systemctl disable cups.socket
sudo dnf update
sudo updatedb
sudo sync
sudo journalctl  | rg -i 'cups'
ll /run/host/
ll /run/host/run/
ll /run/host/run/cups
ll /run/host/run/cup
ll /run/host/
ll /run/cups
ll /run/host
ll /run/host/cups
ll /run/host/run
ll /run/host/run/cup
ll /run/host/run/cups
ll /run/containers/
sudo /bin/ls -al /run/containers/
sudo /bin/ls -al /run/containers/storsge
sudo /bin/ls -al /run/containers/storage
ll /etc/cups
cat /etc/cups/subscriptions.conf.O 
cat /etc/cups/printers.conf.O 
sudo /bin/cat /etc/cups/printers.conf.O 
sudo journalctl  | rg -i 'printer'
la
sudo dnf distrosync 
needrestart 
sudo systemctl reboot 
sudo journalctl --unit cups
sudo systemctl status cups
sudo systemctl status cupsd
sudo systemctl status cups.service
exit
sudo route 
netstat 
man netkey-tool 
man netlink 
man networks
networks
man networks
file /etc/networks 
cat /etc/networks 
cat /etc/netconfig 
man networkctl 
dnf search netsh
sudo getenforce 
sudo setenforce 
sudo setenforce 0
sudo getenforce 
exit
sudo arp-scan -I enp10s0 -l -v
ip a
exit
dnf search slaac
sudo virt-manager
sudo wireshark 
exit
dnf search flat
1 | rg seal
dnf search flat | rg seal
sudo dnf install flatseal.noarch
fdr --type d netplan
exit
sudo jctl
cat /etc/protocols 
portspoof --help
portspoof -h
z portspoof
ll
git reset --hard
git pull
ll
cat DOC 
cat FAQ 
cd
z Playgrounds/sercomm-logs/
ll
most 122323-eventlog.log 
z git
git clone --recursive https://github.com/Drew-Alleman/DataSurgeon.git
z DataSurgeon/
ll
cargo update
cargo doc --no-deps 
cargo install --all-features --path .
cd ..
git clone --recursive https://github.com/ms-jpq/sad.git
git clone --recursive https://github.com/emanuele-em/proxelar.git
z sad
cargo update
cargo doc --no-deps 
cargo install --all-features --path .
cd ..
la
cd proxelar/
cargo udpate
cargo update
cargo install --all-features --path .
cargo install --path .
cargo liner --help
cargo liner install
cargo liner install .
cargo ship
la
cargo install .
cargo install --path=.
cargo install --frozen 
cargo build  --frozen 
dnf search evilimiter
dnf search evillimiter
dnf search evilimiter
dnf search evil-limiter
pipx install --include-deps git+https://github.com/bitbrute/evillimiter.git
evillimiter --help
evillimiter -i enp10s0 
sudo evillimiter -i enp10s0 
which evillimter
cd
exit
ip a
exit
sudo arp-scan -I enp10s0 -l -v
exit
fdh --type evillimter
fdh --type f evillimter
ll ~/.local/bin/
sudo .local/pipx/venvs/evillimiter/bin/evillimiter -i enp10s0
exit
sudo arp-scan -I enp10s0 -l -v
exit
parallel echo ::: A B C
parallel --citation 
parallel echo ::: A B C D E F G H I J K L M N O 
parallel echo ::: A B C D E F G H I J K L M N O ::: 1 2 3 4 5 6 7 ::: alpha beta
z Breach
la
alias
alias | rg parallel
man grep 
cd'
cd
find ~/ -name "*.md" | parallel echo {}
find ~/ -name "*.torrent" | parallel echo {}
find ~/ -name "*.torrent" 2>/dev/null | parallel echo {}
fd -u -H --search-path ~/ --one-file-system 2>/dev/null "*.torrent" | parallel echo {}
fd -u -H --search-path ~/ --one-file-system 2>/dev/null --type f -e "torrent" | parallel echo {}
sudo lsblk -l
fd -u -H --search-path ~/Playgrounds/ --one-file-system 2>/dev/null --type f -e "torrent" | parallel echo {}
exit
fd -u -H --search-path=. 2>/dev/null --type f -e sub | parallel echo {}
fd -u -H --search-path=. 2>/dev/null --type f -e sub | parallel cp {} .
ll
#python playlist_creator_current_dir.py 
rm -rf doorbells.txt 
python playlist_creator_current_dir.py 
ll
most doorbells.txt 
wc -l  doorbells.txt 
dnf search kater
dnf search kate
sudo dnf install kate.x86_64 kate-plugins.x86_64 
exit
< inputbreach/12billionxss.txt | parallel wc -l
< inputbreach/12billionxss.txt | xargs parallel wc -l
< inputbreach/12billionxss.txt | less
< inputbreach/12billionxss.txt 
inputbreach/12billionxss.txt
#sudo chown heimdal:heimdal 
dust .
sudo chown heimdal:heimdal ~/Playgrounds -R 
< inputbreach/12billionxss.txt 
inputbreach/12billionxss.txt 
ll 
ll inputbreach/
cd inputbreach/
< 12billionxss.txt 
cd ..
cat inputbreach/12billionxss.txt | parallel wc -l
la
ll
dust .
npm i -g bash-language-server
sudo dnf install -y nodejs-bash-language-server
ip a
curl ifconfig.me
reset
#2806:108e:13:253f:6d48:4bbd:7ac1:21ae
ping6 2806:108e:13:253f::aaaa
nmap -6 
ip a
ip address show
ip address show -6
ip address show 6
ip address 6 show
ip address -6 show
ip -6 address show
ping6 98:d8:63:4f::aaaa
ping6 08:84:9d:27::aaaa1
ping6 2806:370:426f::aaaa
ping6 2806:370:426f::1111
ping6 2806:370:426f::----
ping6 2806:370:426f::****
ping6 2806:370:426f::AAAA
ping6 2806:370:4102:4XX:XXX:2XXX
ping6 2806:370:4102:4x:xxx:2xxx
ping6 2806:370:4102:4x:xxx:2aaa
ping6 2806:370:4102:4:aaa:2aaa
ping6 2806:370:4102:4:aaa:2
ping6 2806:370:4102:4:AAAA:2
ping6 2806:370:426f:4::2:AAAA
ping6 2806:370:426f::AAAA
ping6 2806:370:426f:4::2:AAAA
ping6 2806:370:4102:A::A
ping6 2806:370:AAAA:A::A
ping6 2806:370:4102:4:A:2
ping6 2806:370:4102:A::A
ping6 2806:370:4102:x::ff
#sudo tcpdump 2806:370:4102:x::ff
man tcpdump
sudo tcpdump -i enp10s0 2806:370:4102:x::f
sudo tcpdump -i enp10s0 udp 2806:370:4102:x::f
sudo tcpdump -i enp10s0 udp -vv 2806:370:4102:x::f
sudo tcpdump -i enp10s0 udp -vv ipv6 2806:370:4102:x::f
sudo tcpdump -i enp10s0 -nr ipv6_traffic.pcap ip6 proto 6 -vv "2806:370:4102:x::f"
sudo tcpdump -vv -i enp10s0 -nr ipv6_traffic.pcap ip6 host 2806:370:4102:x::f
sudo tcpdump -vv -i enp10s0 ip6 host 2806:370:4102:x::f
sudo tcpdump -vv -i enp10s0 Ahost 2806:370:4102:x::f
sudo tcpdump -vv -i enp10s0 host 2806:370:4102:x::f
sudo tcpdump -vv -i enp10s0 2806:370:4102:x::f
sudo tcpdump host "2806:370:4102:x::f" -i enp10s0
sudo tcpdump host 2806:370:4102:x::f -i enp10s0
sudo tcpdump ip6 host 2806:370:4102:x::f -i enp10s0
sudo tcpdump ip6 2806:370:4102:x::f -i enp10s0
#sudo tcpdump -i enp10s0
dnf search masscan
sudo dnf install masscan
sudo masscan --help
man masscan
rustscan --help
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top-ports -a 2806:370:4102:x::f -- -6 -Pn
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top 10000 -a 2806:370:4102:x::f -- -6 -Pn
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top-ports 10000 -a 2806:370:4102:x::f -- -6 -Pn
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top 10000 -a 2806:370:4102:x::f -- -6 -Pn
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top-ports -a 2806:370:4102:x::f -- -6 -Pn
sudo ~/.cargo/bin/rustscan -b 500 -u 7500 --top -a 2806:370:4102:x::f -- -6 -Pn
sudo tcpdump -i enp10s0
ll
exit
sudo ping6 2806:370:4102:x::f
sudo ping6 2806:370:4102:x::ff
sudo ping6 2806:370:4102:A::A
sudo ping6 2806:370:4102:x::ff
sudo ping6 2806:370:4102:x::f
sudo ping6 2806:370:4102:AA::AAA
sudo ping6 2806:370:4102:AA::AA
sudo ping6 2806:370:426f::AAAA
exit
sudo masscan 
sudo masscan -p 5555 192.168.0.0/16
sudo getenforce 
exit
dnf search colorwall
dnf search wall
dnf search wallhaven
which audacity
exxit
exit
sudo chown heimdal:heimdal ~/ -R
sudo htop
sudo virt-manager
sudo wireshark
sudo virt-manager 
z breachcompilation
la
ll
dust .
la data/
ll
virsh net-list --all 
cd
sudo arp-scan -I enp10s0 -l -v
dnf search floorp
flatpak search floorp
flatpak install --user flathub one.ablaze.floorp
sudo updatedb
cd
exit
z git
git clone https://github.com/ShotokanZH/flipper_sub_plotters_comparers.git
cd flipper_sub_plotters_comparers/
ll
virtualenv env/
source env/bin/activate
ll
python -m pip install -r requirements.txt 
ll
python -BO plotall.py ~/Documents/hardware-tinkering/flipper/lfrfid/RfidRecord* --outfile out_plotall.html
ll
cd
deactivate 
exit
z /run/media/heimdal/FLIPPER\ SD/asset_packs/
cd
exit
cd
exit
z PLay
fd -u -H --one-file-sytem --search-path ./ 2>/dev/null --type f "practical iot" -e pdf
fd -u -H --one-file-sytem --search-path ./ 2>/dev/null --type f "iot" -e pdf
fd -u -H --one-file-sytem --search-path PDFs/ 2>/dev/null --type f "iot" -e pdf
fd -u -H --one-file-sytem --search-path PDFs/ 2>/dev/null --type f "practical iot"
fd -u -H --one-file-sytem --search-path ./PDFs/ 2>/dev/null --type f "practical iot"
fd -u -H --search-path ./PDFs/ 2>/dev/null --type f "practical iot"
fd -u -H --search-path ./PDFs/ 2>/dev/null --type f "iot"
fd -u -H --search-path ./ 2>/dev/null --type f "iot"
fd -u -H --search-path ./PDFs/ 2>/dev/null --type f "iot"
fd -u -H --search-path ./PDFs/ 2>/dev/null --type f "Practical"
fd -u -H --search-path ~/Documents/ 2>/dev/null --type f "Practical"
fd -u -H --search-path ~/Documents/ 2>/dev/null --type f "Practical iot"
fd -u -H --search-path ~/Documents/ 2>/dev/null --type f "iot"
fd -u -H --search-path ~/Documents/bookshelf/ 2>/dev/null --type f "iot"
fd -u -H --search-path ~/Documents/bookshelf/ 2>/dev/null --type f "iot" -e pdf
fd -u -H --search-path ~/Documents/bookshelf/ 2>/dev/null --type f practical -e pdf
fd -u -H --search-path ~/ 2>/dev/null --type f practical -e pdf
fd -u -H --search-path ~/ 2>/dev/null --type f practical -e pdf | rg iot
fd -u -H --search-path ~/ 2>/dev/null --type f practical
ll
#sudo chown heimdal:heimdal ~/ -R
sudo arp-scan -I enp10s0 -l -v
sudo virt-manager
sudo df -h
cd
exit
sudo dnf install speedtest-cli-2.1.3-9.fc39.noarch 
sudo dnf install speedtest-cli-2.1.3-9.fc39.noarch slurm-devel-22.05.10-1.fc39.x86_64 
exit
xit
exit
z git
git clone --recursive https://github.com/kefranabg/readme-md-generator.git
z -
ll
rm -rf athena-iso.wiki/
git clone --recursive https://github.com/Athena-OS/athena-iso.wiki.git
z athena-iso.wiki/
l
ls -lha
git reset --hard
git pull
ll
git log
..
la
z hacktricks/
ll
most README.md 
bat README.md 
cat README.md 
ll
z git
ll
which mdbook
git clone --recursive https://github.com/rust-lang/mdBook.git
z mdBook/
cargo update
cargo doc --no-deps 
cd
ll /sys/class/net/
basename /sys/class/net/enp4*
vartest="$(/bin/basename /sys/class/net/enp4*)"
echo $vartest 
exirt
exit
sudo updatedb
z Documents/
z
z Playgrounds/wiki-tree/
ll
z athena-iso.wiki/
l
ll
cd ..
cd BlueToothBLEbook/
ll
cd ..
ll
cd h4cker/
ll
git reset --hard
git pull
ll
cd ..
ll
cd HackRF_Tutorial/
ll
git reset --hard
git pull
cd ..
git clone --recursive https://github.com/trimstray/the-book-of-secret-knowledge.git
git clone --recursive https://github.com/Hacker0x01/hacker101.git
git clone --recursive https://github.com/carpedm20/awesome-hacking.git
git clone --recursive https://github.com/OWASP/owasp-mastg.git
git clone --recursive https://github.com/carlospolop/hacktricks.git
exit
sudo htop
sudo jctl
exit
watch -cd -n 5 'sudo btrfs filesystem usage /'
exit
sudo virt-manager 
exit
dnf search microbit
dnf search bbc
sudo dnf install python3-microfs.noarch uflash.noarch
exit
z git
ll
git clone --recursive https://github.com/virtualabs/btlejack.git
cd btlejack/
ll
cat README.rst 
virtualenv env/
source env/bin/activate
ll
ll btlejack-firmware/
cat README.rst 
cd btlejack
lll'
ll
cd ..
ll
cd btlejack-firmware/
ll
cat README.md 
ll
ll config/
ll dist/
ll source/
make all
ll
ll config/
make
ll
sudo dnf install yt
dnf info ytalk-3.3.0-42.fc39.x86_64 
sudo dnf install ytalk-3.3.0-42.fc39.x86_64 
make clean
make all
cd ..
ll
sudo python -m setup.py install 
sudo python setup install 
sudo python setup.py install 
ll
ll build/
sudo python setup.py build
ll 
ll build/
ll build/bdist.linux-x86_64/
ll dist/
ll btlejack-firmware/
ll btlejack-firmware/source/
./btlejack-firmware make
ll
ll btlejack
btlejack
btlejack --help
btlejack -d
ll /dev/
deactivate 
ll
cd
ll
z git
git clone --recursive https://github.com/seemoo-lab/openhaystack.git
git clone --recursive https://github.com/alcir/microbit-ble.git
git clone --recursive https://github.com/alankrantas/microbit-micropython-cookbook.git
exit
sudo btrfs filesystem stats
sudo btrfs filesystem stats /root
sudo btrfs filesystem stats /
sudo btrfs filesystem usage
sudo btrfs filesystem usage /
sudo btrfs filesystem usage /root
sudo btrfs filesystem usage /home
sudo btrfs filesystem usage /home/heimdal/Playgrounds 
sudo btrfs device stats
sudo btrfs device stats /
sudo btrfs device stats /.snapshots/
sudo btrfs device stats /home/
sudo btrfs device stats /home/heimdal/Playgrounds/
sudo btrfs device stats /home/heimdal/Playgrounds
sudo lsblk -G
sudo lsblk -g
sudo lsblk -l
sudo btrfs scrub /
sudo btrfs scrub start /
sudo btrfs scrub status 
sudo btrfs scrub status /
watch -cd -n 5 'sudo btrfs scrub status /'
watch -cd -n 5 'sudo btrfs scrub start /root'
watch -cd -n 5 'sudo btrfs scrub status /root'
sudo lsblk -f
sudo btrfs scrub start /.snapshots
watch -cd -n 5 'sudo btrfs scrub status /.snapshots'
sudo lsblk -f
sudo btrfs scrub start /home
watch -cd -n 5 'sudo btrfs scrub status /home'
sudo btrfs scrub start /home/heimdal/Playgrounds
watch -cd -n 5 'sudo btrfs scrub status /home/heimdal/Playgrounds'
exit
watch -cd -n 10 'sudo btrfs scrub status /home/heimdal/Playgrounds'
sudo btrfs filesystem usage /
sudo lsblk -f
sudo btrfs filesystem usage /.snapshots
sudo btrfs filesystem usage /root
sudo btrfs filesystem usage /home
sudo btrfs filesystem usage /home/heimdal/Playgrounds 
sudo btrfs filesystem stats /home/heimdal/Playgrounds 
sudo btrfs filesystem stats /
sudo btrfs filesystem show
exit
sudo virt-manager 
needrestart 
exit
sudo htop
exit
sudo htop
sudo virt-manager
sudo ifconfig 
sudo zerotier-cli --help
sudo zerotier-cli info
sudo zerotier-cli --help
sudo zerotier-cli peers
sudo zerotier-cli listnetworks
sudo zerotier-cli listmoons
sudo zerotier-cli --help
sudo zerotier-cli listtpeers
sudo zerotier-cli listpeers
virsh net-list --all 
ifconfig 
sudo virt-manager
sudo getenforce 
sudo setenforce 0
sudo getenforce 
exit
ll .cargo/bin/bat
exit
z Playgrounds/
z HIBPWND/
rsync -nrzvhP /run/media/heimdal/1C405FD106109454/pwned-sha1-passwords.hc100.7z  /home/heimdal/Playgrounds/HIBPWND/
rsync -rzvhP /run/media/heimdal/1C405FD106109454/pwned-sha1-passwords.hc100.7z  /home/heimdal/Playgrounds/HIBPWND/
rsync -rzvhP /run/media/heimdal/1C405FD106109454/pwned-ntlm-passwords.hc100.7z   /home/heimdal/Playgrounds/HIBPWND/
ll
cd
exit
sudo dnf install 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf update
sudo dnf install gh
sudo dnf update gh
gh auth status
gh config list
gh config set --help
gh config set editor nvim
gh config set pager ~/cargo/bin/bat
gh config set browser firefox
gh config list
gh config help
gh config --help
gh config list
gh config get 
gh config get browser
gh config get pager
gh auth login status
gh auth status
gh auth login
gh auth status
exit
exit
dnf list --installed | rg "chafa"
dnf list --installed | rg "imgcat"
dnf search imcat
dnf search imgcat
cd
exit
which bat
bat --help
man bat
batch --help
man batch
file /usr/bin/bat
/usr/bin/bat --help
bat
bat tvs-screenmirroring.txt 
bat -h
exit
z .fzf
z shell/
la
most completion.zsh 
fzf --help
la
cd ..
la
ll bin/
most bin/fzf-preview.sh 
bash bin/fzf-preview.sh  
bash bin/fzf-preview.sh README.md 
bin/fzf-preview.sh README.md 
cd
locate distro-init
z Playgrounds/Projects/distro-init/
la
cp 2config/zsh/.aliases.zsh  ~/
cd
nvim .aliases.zsh 
z Playgrounds/HIBPWND/
7z --help
7z -btx pwned-ntlm-passwords.hc100.7z 
7z -bt x pwned-ntlm-passwords.hc100.7z 
la
mv pwned-ntlm-passwords.hc100.txt temp-ntlm-hashes.txt 
la
head -n 5 temp-ntlm-hashes.txt 
hashcat --identify "00000001F4A473ED6959F04464F91BB5"
awk -F ":" '{ print $1 }' temp-ntlm-hashes.txt | less
awk -F ":" '{ print $1 }' temp-ntlm-hashes.txt | parallel ::: > tempntlm.txt
awk -F ":" '{ print $1 }' temp-ntlm-hashes.txt > tempntlm.txt
cd
exit
sudo systemctl reboot
sudo nvim /etc/hosts
la
sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/fedora37/x86_64/cuda-fedora37.repo
sudo dnf clean all
sudo dnf makecache --refresh 
sudo dnf install cuda-toolkit
needrestart 
sudo dnf check-update 
sudo dnf distrosync 
sudo dnf --allowerasing distrosync 
sudo dnf update
sudo dnf --best --allowerasing --assumeyes distrosync 
sudo dnf --best --skip-broken --allowerasing --assumeyes distrosync
sudo dnf --skip-broken --allowerasing --assumeyes distrosync
sudo dnf --skip-broken --assumeyes distrosync
sudo dnf  distrosync
sudo dnf update
sudo dnf --best --allowerasing --assumeyes update
sudo dnf remove xorg-x11-drv-nvidia-cuda-libs-3:545.29.06-2.fc39.x86_64 
sudo dnf check-update 
sudo dnf --allowerasing --assumeyes distrosync 
sudo dnf remove egl-gbm-1.1.0-5.fc39.x86_64
sudo dnf module disable nvidia-driver
sudo dnf reinstall cuda-toolkit
sudo dnf install cuda-toolkit cuda-tools cuda-driver-devel 
sudo dnf install cuda-toolkit-12-3-12.3.0-1.x86_64 cuda-tools-12-3-12.3.0-1.x86_64 cuda-driver-devel 
sudo dnf install cuda-toolkit-12-3-12.3.0-1.x86_64 cuda-tools-12-3-12.3.0-1.x86_64 cuda-driver-devel-12-3-12.3.52-1.x86_64 
sudo dnf install cuda-toolkit-12-3-12.3.0-1.x86_64 cuda-tools-12-3-12.3.0-1.x86_64 cuda-driver-devel-12-3-12.3.52-1.x86_64 cuda-toolkit-config-common-12.3.52-1.noarch 
sudo dnf check-update 
sudo dnf --allowerasing --assumeyes distrosync 
cargo liner ship
flatpak update --system 
nvm
npm 
npm update
ll
sudo dnf check-update 
z Playgrounds/
rsync -nrzvhP /run/media/heimdal/CRYPTBKDrive/VideoLearning/* /home/heimdal/Playgrounds/Videos/
#rsync -nrzvhP /run/media/heimdal/CRYPTBKDrive/VideoLearning/* /home/heimdal/Playgrounds/Videos/
dust /run/media/heimdal/CRYPTBKDrive
cd
exit
man chgrp 
ls -lha
sudo dnf check-update
exit
exit
sudo lsblk -l
z git
git clone --recurisve https://github.com/glitchedgitz/cook
git clone --recursive https://github.com/glitchedgitz/cook
git clone --recursive https://github.com/sensepost/common-substr.git
git clone --recursive https://github.com/semeion/handshake-cracker.git
git clone --recursive https://github.com/sensepost/hash-cracker.git

git clone --recursive https://github.com/nil0x42/duplicut.git
git clone --recursive https://github.com/philsmd/7z2hashcat.git
locate hashcat-utils
git clone --recursive https://github.com/JakeWnuk/Rules.git
git clone --recursive https://github.com/shmuelamar/cracken.git
la
cd cracken/
la
cargo update
cargo doc --no-deps 
cargo install --all-features  --path .
la
ll bench
ll benches/
la
la talk/
la target/
la target/doc/
la target/release/
la target/release/examples/
la
cd ..
la
z duplicut/
ll
ll src/
la
la data/
make all
ll
ll src/
ll objects/
la
ll src/
ll test/
ll test/scripts/
ll test/wordlists/
ll
sudo make install
la
..
la
z handshake-cracker/
la
cd ..
la
la Rules/
cd ..
l
ala
la
z git-repos/
la
cd
sudo updatedb && sudo sync
sudo systemctl poweroff 
gnome-tweaks
rmk
cat .functions.zsh > .bash_functions
ncim .bashrc
nvim .bashrc
source .bashrc
rmk
get_term_size 
get_window_size 
rmk
exit
regx -f md5-cracked.potfile -m hex32
regx -f md5-cracked.potfile -m md5
regx -f "md5-cracked.potfile" -m hex32
egrep '[a-f0-9]{32}' cracked-18142-ntlm.potfile  
grep '[a-f0-9]{32}' cracked-18142-ntlm.potfile 
grep --regexp '[a-f0-9]{32}' cracked-18142-ntlm.potfile
< cracked-18142-ntlm.potfile |  grep --regexp '[a-f0-9]{32}'
< cracked-18142-ntlm.potfile
cat cracked-18142-ntlm.potfile |  grep --regexp '[a-f0-9]{32}'
ll
less cracked-18142-ntlm.potfile 
strings cracked-18142-ntlm.potfile |  grep --regexp '[a-f0-9]{32}'
strings cracked-18142-ntlm.potfile 
ll
rm -rf ./*.potfile
ll
exit
nvim menu-utils-script.sh 
./menu-utils-script.sh 
nvim menu-utils-script.sh 
./menu-utils-script.sh 
nvim menu-utils-script.sh 
./menu-utils-script.sh 
nvim menu-utils-script.sh 
./menu-utils-script.sh 
exit
./bashColorVars.sh 
ll
bash bashColorVars.sh 
nvim bashColorVars.sh 
#< bashColorVars.sh | # tr -d 
nvim bashColorVars.sh 
< bashColorVars.sh | # tr -d '\r' 
< bashColorVars.sh | # tr -d '\r' .
< bashColorVars.sh | # tr -d "\r" .
< bashColorVars.sh | # tr -d "\r" 
< bashColorVars.sh | tr -d '\r' 
< bashColorVars.sh | tr -d '\r' .
tr -d '\r' . bashColorVars.sh 
tr -d '\r' bashColorVars.sh 
tr -d '\r' . 
tr -d '\r'
ll
nvim bashColorVars.sh 
ll
exit
dnf search beep
sudo dnf install beep-1.4.12-9.fc39.x86_64 
beep -f 587 -l 714
beep --help
man pcsc-spy 
exit
beep
ll /dev/snd/
ll /dev/snd/pcm*p
exit

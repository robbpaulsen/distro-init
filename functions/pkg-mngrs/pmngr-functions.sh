if grep -qs "ubuntu" /etc/os-release; then
	os="ubuntu"
	pkgmgr="apt"
	install_arg="install"
	update_arg="update"
elif grep -qs "freebsd" /etc/os-release; then
	os="freebsd"
	pkgmgr="pkg"
	install_arg="install"
	update_arg="update"
elif grep -qs "alpine" /etc/os-release; then
	os="alpine"
	pkgmgr="apk"
	install_arg="add"
	update_arg="update"
elif [[ -e /etc/debian_version ]]; then
	os="debian"
	pkgmgr="apt"
	install_arg="install"
	update_arg="update"
elif [[ -e /etc/almalinux-release || -e /etc/rocky-release || -e /etc/centos-release ]]; then
	echo -e $redB "Fuck Red-Hat for putting source code behind paywalls."
	os="centos"
	pkgmgr="dnf"
	install_arg="install"
	update_arg="update"
elif [[ -e /etc/fedora-release ]]; then
	os="fedora"
	pkgmgr="dnf"
	install_arg="install"
	update_arg="update"
elif [[ -e /etc/nobara ]]; then
	echo -e $redB "gaming moment"
	os="fedora"
	pkgmgr="dnf"
	install_arg="install"
	update_arg="update"
elif [[ -e /etc/arch-release ]]; then
	os="arch"
	pkgmgr="pacman"
	install_arg="-S --needed --noconfirm"
	update_arg="-Syy"
else
	echo -e "ERROR: Distro not recognised - exiting..."
	exit 1
fi

echo -e "\nOperating System Identified: \n[+]$os \n[+]$pkgmgr\n"

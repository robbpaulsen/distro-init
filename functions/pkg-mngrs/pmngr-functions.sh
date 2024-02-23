function which_pmngr() {
	DNF="$(command -v dnf &>/dev/null)"
	APPT="$(command -v apt &>/dev/null)"
	PACMAN="$(command -v pacman &>/dev/null)"

	if [ $DNF]; then
		echo -e "\n[+] "DNF"\n"
	elif
		[ $APT ]
	then
		echo -e "\n[+] "APT"\n"
	elif
		$PACMAN
	then
		echo -e "\n[+] "Pacman"\n"
	fi
}

function pmngr() {
	which_pmngr
}

function pmngr_apt_udate() {
	sudo pmngr --assume-yes update
}

function pmngr_apt_ugrade() {
	sudo pmngr --assume-yes full-upgrade
}

function pmngr_dnf_chk() {
	pmngr check-update
}

function pmngr_dnf_udate() {
	sudo pmngr --assumeyes update
}

function pmngr_dnf_ugrade() {
	sudo pmngr --assumeyes distro-sync
}

function pmngr_pman_udate() {
	sudo pmngr -Syyu --needed
}

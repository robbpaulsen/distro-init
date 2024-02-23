alias iw='sudo iw'
alias ip='sudo ip'
alias macchanger='sudo macchanger'
alias rfkill='sudo rfkill'

source "$HOME/Projects/distro-init/functions/sys-services/services-functions.sh"

wiface="$(basename /sys/class/net/wl*)"


function devstat() {
	iw dev |
		grep type |
		cut -d " " -f 2-
}

function nic_down() {
	ip link set "$wiface" down
}

function nic_up() {
	ip link set "$wiface" up
}

function org_mac() {
	maccahnger -p "$wiface"
}

function rnd_mac() {
	macchanger -a "$wiface"
}

function nic_mon() {
	iw dev "$wiface" set type monitor &&
		echo -e "\n[+] devstat\n"
}

function nic_org() {
	iw dev "$wiface" set type managed &&
		echo -e "\n[+] devstat\n"
}

function other_mac() {
	macchanger -a "$wiface"
}

function mac_show() {
	macchanger -s "$wiface"
}

function wless_scan() {
	iw dev "$wiface" scan
}

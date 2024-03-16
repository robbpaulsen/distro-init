alias iw='sudo iw'
alias ip='sudo ip'
alias macchanger='sudo macchanger'
alias rfkill='sudo rfkill'

source $HOME/.local/functions/sys-services/services-functions.sh

wiface=$(
	iw dev | grep "Interface" | xargs | cut -d " "
	-f 2-
)

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

function show_mac() {
	macchanger -s "$wiface"
}

function org_mac() {
	maccahnger -p "$wiface"
}

function rnd_mac() {
	macchanger -a "$wiface"
}

function nic_mon() {
	nic_down &&
		rnd_mac &&
		iw dev "$wiface" set type monitor &&
		nic_up
}

function nic_org() {
	nic_down && org_mac
}

function other_mac() {
	macchanger -a "$wiface"
}

function wless_scan() {
	iw dev "$wiface" scan
}

function get_ssids() {
	wless_scan | grep "SSID" | tee ssids.lst
}

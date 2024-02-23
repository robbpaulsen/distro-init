alias sys="sudo systemctl"

function sys_stat() {
	systemctl status
}

function sys_start() {
	sys start --now "$1"
}

function sys_stop() {
	sys stop --now "$1"
}

function sys_reload() {
	sys reload "$1"
}

function servs_down() {
	sys_stop --now wpa_wupplicant.service NetworkManager.service
}

function servs_up() {
	sys_start --now wpa_wupplicant.service NetworkManager.service
}

#!/usr/bin/env bash

function sys_stat() {
	systemctl status
}

function sys_start() {
	sudo systemctl start --now
}

function sys_stop() {
	sudo systemctl stop --now
}

function sys_reload() {
	sudo systemctl reload
}

function servs_down() {
	sys_stop wpa_wupplicant.service NetworkManager.service
}

function servs_up() {
	sys_start wpa_wupplicant.service NetworkManager.service
}

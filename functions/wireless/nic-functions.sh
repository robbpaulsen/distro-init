#!/usr/bin/env bash

function wiface() {
	basename /sys/class/net/wl*
}

function devstat() {
	iw dev |
		grep type |
		cut -d " " -f 2-
}

function nic_down() {
	sudo ip link set wiface down
}

function nic_up() {
	sudo ip link set wiface up
}

function org_mac() {
	sudo maccahnger -p
}

function rnd_mac() {
	sudo macchanger -a
}

function nic_mon() {
	sudo iw dev wlan0 set type monitor &&
		echo wiface
}

function perm_mac() {
	nic_down &&
		org_mac wiface
}
function other_mac() {
	nic_down &&
		rnd_mac &&
		nic_up
}

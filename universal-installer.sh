#!/usr/bin/env bash

#########################################################################################
#########################################################################################
## Author:   Robbpaulsen
## GitHub:   github.com/robbpaulsem
##
## set -x -e
#########################################################################################
## Author:	Robbpaulsen
## Website:	https://github.com/robbpaulsen
## Email:	ozymandias.1987@protonmail.com
#########################################################################################
## Descripcion:
##
## Script for a more unattended, headless setup and configurationg for the basic things
## on any new linux installation.
##
#########################################################################################
#########################################################################################

NORMAL='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'
LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'
UNDERLINE='\033[04m'

trap ctrl_c INT

function ctrl_c() {
	exit_script
}

if [ "$EUID" -ne 0 ]; then
	echo -e "${YELLOW}\n[+]Se te olvido el sudo ...\n${NORMAL}"
	exit
fi

#########################################################################################
#                                                                                       #
#           EXPERIMENTAL BLOCK                                                          #
#                                                                                       #
#########################################################################################
#manager=$(
#pmgrs=(apt dnf pacman)
#for manager in "${managers[@]}"; do
#    if command -v $manager &> /dev/null; then
#        echo -e "\n${GREEN}[+]${NORMAL} ${manager} -> $(command -v $manager)\n"
#        sleep 0.05
#    fi
#done
#)

function sys_reboot() {
	/bnin/cat <<EOF

[ El Sistema se Reiniciara en 5 segundos ]

EOF
	sleep 5 &&
		systemctl reboot
}

#########################################################################################
##                                                                                     ##
##                                     Debian                                          ##
##                                                                                     ##
#########################################################################################

if command -v apt &>/dev/null; then
	function deb_update() {
		clear
		/bin/cat <<EOF

[ Actualizando la base de Apt ]

EOF
		sleep 2
		apt-get --assume-yes update &>/dev/null &&
			sleep 2

		/bin/cat <<EOF

[ Termino la actualizacion de la base de Apt ]

EOF
		clear
	}

	function deb_upgrade() {
		clear
		/bin/cat <<EOF

[ Instalando Actualizaciones de Apt ]

EOF
		sleep 2
		apt-get --assume-yes full-upgrade
		sleep 2
	}

	function deb_deps() {
		cat <<EOF

[ Instalando las Dependencias y Librerias ]

EOF
		sleep 2

		while read -r line; do
			echo -e "${CYAN}\n[+]${NORMAL} ${GREEN}Instalando $line\n${NORMAL}"
			apt-get --assume-yes install "$line" &>/dev/null
		done <assets/dubuntu.lst
	}

	function plangs() {
		clear
		/bin/cat <<EOF

[ Lenguajes de Programacion ]

EOF
		sleep 2

		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain stable -y &&
			curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash &&
			wget https://git.io/go-installer.sh && bash go-installer.sh
	}

#########################################################################################
##                                                                                     ##
##                                Arch                                                 ##
##                                                                                     ##
#########################################################################################

elif command -v pacman &>/dev/null; then

	function arch_fix() {
		/bin/cat <<EOF

[ Borrando la base de PACMAN ]

EOF
		sleep 2
		rm /var/lib/pacman/sync/* &>/dev/null
		rm -rf /etc/pacman.d/gnupg/* &>/dev/null

		/bin/cat <<EOF

[ Reinicializando las llaves y firmas de PACMAN ]

EOF
		sleep 2
		pacman-key --init
		sleep 2
		pacman-key --populate
		sleep 2
		pacman -Sy
	}

	function arch_update() {
		clear
		/bin/cat <<EOF

[ Actualizando el Sistema ]

EOF
		sleep 2
		pacman -Syyu --noconfirm &>/dev/null &&
			sleep 2

		/bin/cat <<EOF

[ Termino la Actualiacion ]

EOF
	}

	function arch_deps() {
		clear
		/bin/cat <<EOF

[ Instalacion de Dependencias y Librerias ]

EOF
		sleep 2
		while read -r line; do
			echo -e "${CYAN}\n[+]${NORMAL} ${GREEN}Instalando $line\n${NORMAL}"
			pacman -S --needed --noconfirm "$line" &>/dev/null
		done <assets/archLibsPkgs.lst
	}

	function plangs() {
		clear
		/bin/cat <<EOF

[ Lenguajes de Programacion ]

EOF
		sleep 2
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain stable -y &&
			curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash &&
			wget https://git.io/go-installer.sh && bash go-installer.sh
	}

#########################################################################################
##                                                                                     ##
##                                Fedora                                               ##
##                                                                                     ##
#########################################################################################

else
	command -v dnf &>/dev/null

	function rhel_update() {
		clear
		/bin/cat <<EOF

[ Actualizando Sistema ]

EOF
		sleep 2

		dnf --assumeyes check-update &>/dev/null &&
			dnf --assumeyes distro-sync
		sleep 2

		/bin/cat <<EOF

[ Termino la Actualizacion ]

EOF
	}

	function rhel_deps() {
		clear
		/bin/cat <<EOF

[ Instalando Dependencias y Librerias ]

EOF
		sleep 2
		while read -r line; do
			echo -e "${CYAN}\n[+]${NORMAL} ${GREEN}Instalando $line\n${NORMAL}"
			dnf --assumeyes install "$line" &>/dev/null
		done <assets/dnf-pkgs.lst
	}

	function plangs() {
		clear
		/bin/cat <<EOF

[ Lenguajes de Programacion ]

EOF
		sleep 2
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain stable -y &&
			curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash &&
			wget https://git.io/go-installer.sh && bash go-installer.sh
	}

	#########################################################################################
	##                                                                                     ##
	##                                SETUP                                                ##
	##                                                                                     ##
	#########################################################################################

	#setup() {

	#	sleep 3;

	#	echo "Copying files, please wait.."

	#	pushd ~/dotfiles
	#	cp -r home/. ~/
	#	su -c 'cp -r usr/share/* /usr/share/'
	#	su -c 'cp -r usr/bin/* /usr/bin/'
	#	popd

	#	if test -f /usr/local/share/xsessions/awesome.desktop; then
	#		su -c 'mv /usr/local/share/xsessions/awesome.desktop /usr/share/xsessions/awesome.desktop'
	#	fi

	#	if command -v loginctl >/dev/null; then
	#		su -c 'ln -s /etc/sv/dbus /var/service'
	#	fi

	#	chmod u+x ~/.config/awesome/bin/*
	#	fc-cache -fv
	#	xrdb ~/.Xresources
	#	xdg-user-dirs-update
	#	mkdir ~/Pictures/Screenshots

	#	sleep 3; clear

	#}

	#########################################################################################
	##                                                                                     ##
	##                                Run Functions                                        ##
	##                                                                                     ##
	#########################################################################################
	function menu() {
		while true; do
			echo -e "${WHITE} ╔───────────────────────────────────────────────╗"
			echo -e "${WHITE} |${CYAN} ██████╗ ███████╗██████╗ ██╗    ██╗███╗   ███╗${WHITE} |"
			echo -e "${WHITE} |${CYAN} ██╔══██╗██╔════╝██╔══██╗██║    ██║████╗ ████║${WHITE} |"
			echo -e "${WHITE} |${CYAN} ██████╔╝███████╗██████╔╝██║ █╗ ██║██╔████╔██║${WHITE} |"
			echo -e "${WHITE} |${CYAN} ██╔══██╗╚════██║██╔═══╝ ██║███╗██║██║╚██╔╝██║${WHITE} |"
			echo -e "${WHITE} |${CYAN} ██████╔╝███████║██║     ╚███╔███╔╝██║ ╚═╝ ██║${WHITE} |"
			echo -e "${WHITE} |${CYAN} ╚═════╝ ╚══════╝╚═╝      ╚══╝╚══╝ ╚═╝     ╚═╝${WHITE} |"
			echo -e "${WHITE} ┖───────────────────────────────────────────────┙"
			echo ""
			echo -e "${WHITE} [${BLUE}i${WHITE}] BSPWM Auto Setup"
			echo -e "${WHITE} [${BLUE}i${WHITE}] Ozymandias"
			echo ""
			echo -e "${WHITE} [${BLUE}i${WHITE}] Iniciando"
			echo ""
			echo ""
			echo "-------------------------------------------------------------------------------"
			echo ""
			echo ""
			echo -e "${CYAN}[+] Elige el Sistema Operativo en el que deseas instalar ...${NORMAL}"
			echo -e "${RED} 1: [+] Debian${NORMAL}"
			echo -e "${BLUE} 2: [+] ArchLinux${NORMAL}"
			echo -e "${BLUE} 3: [+] Reparar Errores de PACMAN${NORMAL}"
			echo -e "${LBLUE} 4: [+] Fedora${NORMAL}"
			echo -e "${LGREEN} 5: [+] Reiniciar Sistema${NORMAL}"
			echo -e "${LYELLOW} 6: [!] Salir ...${NORMAL}"
			echo ""
			echo ""
			echo "-------------------------------------------------------------------------------"
			read -p "Escribe el numero de la seleccion deseada: " numero
			case $numero in
			1)
				deb_update &&
					deb_deps &&
					plangs
				;;
			2)
				arch_update &&
					arch_update &&
					arch_deps &&
					plangs
				;;
			3)
				arch_fix
				;;
			4)
				rhel_update &&
					rhel_deps &&
					plangs
				;;
			5)
				sys_reboot
				;;
			6)
				exit
				;;

			esac
		done
	}
	menu
fi
#########################################################################################
##                                                                                     ##
##                                End                                                  ##
##                                                                                     ##
#########################################################################################

#read -r -p "
#Instalacion Completa, este script fue hecho por Robbpaulsen.

#Deseas reinicar?

#(1) Si
#(*) No

#(?) Selecciona una opcion: " rbt

#if [[ "$rbt" -eq 1 ]]; then
#  sleep 3
#  clear
#  systemctl reboot

#else
#  echo -e "\n${YELLOW}[+]${NORMAL}${CYAN} Saliendo sin reiniciar  ...${NORMAL}\n"

#fi

#clear

#read -p "

#$USER Este Script empezara por actualizar el sistema,  instalar dependencias, librerias y lenguages de programacion
#necesarias para un entorno con BSPWM como Tiling Window Manager.

#Deseas Continuar ?

#(1) Si
#(*) No

#(?) Seleccionar opcion: " res_1

#if [[ $res_1 == "1" ]]; then
#  sleep 2;
#  clear
#else
#  exit
#
function get_os() {
	# $kernel_name is set in a function called cache_uname and is
	# just the output of "uname -s".
	case $kernel_name in
	Darwin) os=$darwin_name ;;
	SunOS) os=Solaris ;;
	Haiku) os=Haiku ;;
	MINIX) os=MINIX ;;
	AIX) os=AIX ;;
	IRIX*) os=IRIX ;;
	FreeMiNT) os=FreeMiNT ;;

	Linux | GNU*)
		os=Linux
		;;

	*BSD | DragonFly | Bitrig)
		os=BSD
		;;

	CYGWIN* | MSYS* | MINGW*)
		os=Windows
		;;

	*)
		printf '%s\n' "Unknown OS detected: '$kernel_name', aborting..." >&2
		printf '%s\n' "Open an issue on GitHub to add support for your OS." >&2
		exit 1
		;;
	esac
}

function get_distro() {
	[[ $distro ]] && return

	case $os in
	Linux | BSD | MINIX)
		if [[ -f /bedrock/etc/bedrock-release && -z $BEDROCK_RESTRICT ]]; then
			case $distro_shorthand in
			on | tiny) distro="Bedrock Linux" ;;
			*) distro=$(</bedrock/etc/bedrock-release) ;;
			esac

		elif [[ -f /etc/redstar-release ]]; then
			case $distro_shorthand in
			on | tiny) distro="Red Star OS" ;;
			*) distro="Red Star OS $(awk -F'[^0-9*]' '$0=$2' /etc/redstar-release)" ;;
			esac

		elif [[ -f /etc/armbian-release ]]; then
			. /etc/armbian-release
			distro="Armbian $DISTRIBUTION_CODENAME (${VERSION:-})"

		elif [[ -f /etc/siduction-version ]]; then
			case $distro_shorthand in
			on | tiny) distro=Siduction ;;
			*) distro="Siduction ($(lsb_release -sic))" ;;
			esac

		elif [[ -f /etc/mcst_version ]]; then
			case $distro_shorthand in
			on | tiny) distro="OS Elbrus" ;;
			*) distro="OS Elbrus $(</etc/mcst_version)" ;;
			esac

		elif type -p pveversion >/dev/null; then
			case $distro_shorthand in
			on | tiny) distro="Proxmox VE" ;;
			*)
				distro=$(pveversion)
				distro=${distro#pve-manager/}
				distro="Proxmox VE ${distro%/*}"
				;;
			esac

		elif type -p lsb_release >/dev/null; then
			case $distro_shorthand in
			on) lsb_flags=-si ;;
			tiny) lsb_flags=-si ;;
			*) lsb_flags=-sd ;;
			esac
			distro=$(lsb_release "$lsb_flags")

		elif [[ -f /etc/os-release ||
			-f /usr/lib/os-release ||
			-f /etc/openwrt_release ||
			-f /etc/lsb-release ]]; then

			# Source the os-release file
			for file in /etc/lsb-release /usr/lib/os-release \
				/etc/os-release /etc/openwrt_release; do
				source "$file" && break
			done

			# Format the distro name.
			case $distro_shorthand in
			on) distro="${NAME:-${DISTRIB_ID}} ${VERSION_ID:-${DISTRIB_RELEASE}}" ;;
			tiny) distro="${NAME:-${DISTRIB_ID:-${TAILS_PRODUCT_NAME}}}" ;;
			off) distro="${PRETTY_NAME:-${DISTRIB_DESCRIPTION}} ${UBUNTU_CODENAME}" ;;
			esac

		elif [[ -f /etc/GoboLinuxVersion ]]; then
			case $distro_shorthand in
			on | tiny) distro=GoboLinux ;;
			*) distro="GoboLinux $(</etc/GoboLinuxVersion)" ;;
			esac

		elif [[ -f /etc/SDE-VERSION ]]; then
			distro="$(</etc/SDE-VERSION)"
			case $distro_shorthand in
			on | tiny) distro="${distro% *}" ;;
			esac

		elif type -p crux >/dev/null; then
			distro=$(crux)
			case $distro_shorthand in
			on) distro=${distro//version/} ;;
			tiny) distro=${distro//version*/} ;;
			esac

		elif type -p tazpkg >/dev/null; then
			distro="SliTaz $(</etc/slitaz-release)"

		elif type -p kpt >/dev/null &&
			type -p kpm >/dev/null; then
			distro=KSLinux

		elif [[ -d /system/app/ && -d /system/priv-app ]]; then
			distro="Android $(getprop ro.build.version.release)"

		# Chrome OS doesn't conform to the /etc/*-release standard.
		# While the file is a series of variables they can't be sourced
		# by the shell since the values aren't quoted.
		elif [[ -f /etc/lsb-release && $(</etc/lsb-release) == *CHROMEOS* ]]; then
			distro='Chrome OS'

		elif type -p guix >/dev/null; then
			case $distro_shorthand in
			on | tiny) distro="Guix System" ;;
			*) distro="Guix System $(guix -V | awk 'NR==1{printf $4}')" ;;
			esac

		# Display whether using '-current' or '-release' on OpenBSD.
		elif [[ $kernel_name = OpenBSD ]]; then
			read -ra kernel_info <<<"$(sysctl -n kern.version)"
			distro=${kernel_info[*]:0:2}

		else
			for release_file in /etc/*-release; do
				distro+=$(<"$release_file")
			done

			if [[ -z $distro ]]; then
				case $distro_shorthand in
				on | tiny) distro=$kernel_name ;;
				*) distro="$kernel_name $kernel_version" ;;
				esac

				distro=${distro/DragonFly/DragonFlyBSD}

				# Workarounds for some BSD based distros.
				[[ -f /etc/pcbsd-lang ]] && distro=PCBSD
				[[ -f /etc/trueos-lang ]] && distro=TrueOS
				[[ -f /etc/pacbsd-release ]] && distro=PacBSD
				[[ -f /etc/hbsd-update.conf ]] && distro=HardenedBSD
			fi
		fi

		if [[ $(</proc/version) == *Microsoft* || $kernel_version == *Microsoft* ]]; then
			windows_version=$(wmic.exe os get Version)
			windows_version=$(trim "${windows_version/Version/}")

			case $distro_shorthand in
			on) distro+=" [Windows $windows_version]" ;;
			tiny) distro="Windows ${windows_version::2}" ;;
			*) distro+=" on Windows $windows_version" ;;
			esac

		elif [[ $(</proc/version) == *chrome-bot* || -f /dev/cros_ec ]]; then
			[[ $distro != *Chrome* ]] &&
				case $distro_shorthand in
				on) distro+=" [Chrome OS]" ;;
				tiny) distro="Chrome OS" ;;
				*) distro+=" on Chrome OS" ;;
				esac
			distro=${distro## on }
		fi

		distro=$(trim_quotes "$distro")
		distro=${distro/NAME=/}

		# Get Ubuntu flavor.
		if [[ $distro == "Ubuntu"* ]]; then
			case $XDG_CONFIG_DIRS in
			*"studio"*) distro=${distro/Ubuntu/Ubuntu Studio} ;;
			*"plasma"*) distro=${distro/Ubuntu/Kubuntu} ;;
			*"mate"*) distro=${distro/Ubuntu/Ubuntu MATE} ;;
			*"xubuntu"*) distro=${distro/Ubuntu/Xubuntu} ;;
			*"Lubuntu"*) distro=${distro/Ubuntu/Lubuntu} ;;
			*"budgie"*) distro=${distro/Ubuntu/Ubuntu Budgie} ;;
			*"cinnamon"*) distro=${distro/Ubuntu/Ubuntu Cinnamon} ;;
			esac
		fi
		;;

	"Mac OS X" | "macOS")
		case $osx_version in
		10.4*) codename="Mac OS X Tiger" ;;
		10.5*) codename="Mac OS X Leopard" ;;
		10.6*) codename="Mac OS X Snow Leopard" ;;
		10.7*) codename="Mac OS X Lion" ;;
		10.8*) codename="OS X Mountain Lion" ;;
		10.9*) codename="OS X Mavericks" ;;
		10.10*) codename="OS X Yosemite" ;;
		10.11*) codename="OS X El Capitan" ;;
		10.12*) codename="macOS Sierra" ;;
		10.13*) codename="macOS High Sierra" ;;
		10.14*) codename="macOS Mojave" ;;
		10.15*) codename="macOS Catalina" ;;
		10.16*) codename="macOS Big Sur" ;;
		11.*) codename="macOS Big Sur" ;;
		12.*) codename="macOS Monterey" ;;
		*) codename=macOS ;;
		esac

		distro="$codename $osx_version $osx_build"

		case $distro_shorthand in
		on) distro=${distro/ ${osx_build}/} ;;

		tiny)
			case $osx_version in
			10.[4-7]*) distro=${distro/${codename}/Mac OS X} ;;
			10.[8-9]* | 10.1[0-1]*) distro=${distro/${codename}/OS X} ;;
			10.1[2-6]* | 11.0*) distro=${distro/${codename}/macOS} ;;
			esac
			distro=${distro/ ${osx_build}/}
			;;
		esac
		;;

	"iPhone OS")
		distro="iOS $osx_version"

		# "uname -m" doesn't print architecture on iOS.
		os_arch=off
		;;

	Windows)
		distro=$(wmic os get Caption)
		distro=${distro/Caption/}
		distro=${distro/Microsoft /}
		;;

	Solaris)
		case $distro_shorthand in
		on | tiny) distro=$(awk 'NR==1 {print $1,$3}' /etc/release) ;;
		*) distro=$(awk 'NR==1 {print $1,$2,$3}' /etc/release) ;;
		esac
		distro=${distro/\(*/}
		;;

	Haiku)
		distro=Haiku
		;;

	AIX)
		distro="AIX $(oslevel)"
		;;

	IRIX)
		distro="IRIX ${kernel_version}"
		;;

	FreeMiNT)
		distro=FreeMiNT
		;;
	esac

	distro=${distro//Enterprise Server/}

	[[ $distro ]] || distro="$os (Unknown)"

	# Get OS architecture.
	case $os in
	Solaris | AIX | Haiku | IRIX | FreeMiNT)
		machine_arch=$(uname -p)
		;;

	*) machine_arch=$kernel_machine ;;
	esac

	[[ $os_arch == on ]] &&
		distro+=" $machine_arch"

	[[ ${ascii_distro:-auto} == auto ]] &&
		ascii_distro=$(trim "$distro")
}

#	if [ $DNF]; then
#		echo -e "\n[+] "DNF"\n"
#	elif
#		[ $APT ]
#	then
#		echo -e "\n[+] "APT"\n"
#	elif
#		$PACMAN
#	then
#		echo -e "\n[+] "Pacman"\n"
#	fi
#}

#function pmngr() {
#	which_pmngr
#}

#function pmngr_apt_udate() {
#	sudo pmngr --assume-yes update
#}

#function pmngr_apt_ugrade() {
#	sudo pmngr --assume-yes full-upgrade
#}

#function pmngr_dnf_chk() {
#	pmngr check-update
#}

#function pmngr_dnf_udate() {
#	sudo pmngr --assumeyes update
#}

#function pmngr_dnf_ugrade() {
#	sudo pmngr --assumeyes distro-sync
##}

#function pmngr_pman_udate() {
#	sudo pmngr -Syyu --needed
#}

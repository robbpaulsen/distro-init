# Rust utilities

clear

cargo install --all-features bat fd-find du-dust vivid lscolors bat lsd grex cargp-deb \
	cracken rustscan &&
	cargo install trippy ripgrep miniserve cargo-update mdbook mdbook-latex mdbook-theme \
		mdbook-epub zellij &&
	sleep 2 &&
	sudo apt-get install -y hwinfo inxi ncdu nload bmon wavemon synaptic gdebi flatpak \
		nitrogen arandr rofi picom polybar bspwm kitty qutebroswer needrestart &&
	sudo apt-get install -y flatpak &&
	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

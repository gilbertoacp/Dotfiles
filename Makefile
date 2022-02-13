AUR_PACKAGES_FILE := ${HOME}/.config/pacman/aur.txt
PACMAN_PACKAGES_FILE := ${HOME}/.config/pacman/pacman.txt

install-fnm:
	sudo pacman -S --needed unzip curl
	curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "${HOME}/.fnm" --skip-shell

install-ohmyzsh:
	git clone https://github.com/ohmyzsh/ohmyzsh.git ${HOME}/.oh-my-zsh

backup-packages:
	pacman -Qqm > ${AUR_PACKAGES_FILE}
	pacman -Qnq > ${PACMAN_PACKAGES_FILE}

restore-packages:
	@if [ -x /usr/bin/paru ]; then\
	    sudo pacman -S --needed - < ${PACMAN_PACKAGES_FILE};\
	    paru -S --needed --noconfirm - < ${AUR_PACKAGES_FILE};\
    fi

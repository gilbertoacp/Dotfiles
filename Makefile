sample:
	echo "${HOME}"
	echo "${HOME}"
	echo "${HOME}"

install-zsh:
	git clone https://github.com/ohmyzsh/ohmyzsh "${HOME}/.oh-my-zsh"

restore:
	git clone --bare --recursive --branch desktop https://github.com/gilbertoacp/dotfiles "${HOME}/.dotfiles"
	dotfiles() { /usr/bin/env git --git-dir="${HOME}/.dotfiles/" --work-tree="${HOME}" "$@" }
	if ! dotfiles checkout >/dev/null 2>&1; then \
		mkdir -p "${HOME}/.dotfiles.bak"; \
		dotfiles checkout 2>&1 | grep -P '^\s+[\w.]' | awk '{print $1}' | xargs -I{} sh -c 'cp -r --parents "{}" "${HOME}/.dotfiles.bak/" && rm -rf "{}"'; \
		dotfiles checkout; \
	fi
	dotfiles submodule update --recursive --remote
	dotfiles config --local status.showUntrackedFiles no

backup-pacman:
	pacman -Qnq > ${PWD}/.config/pacman/pacman.txt
	pacman -Qqem > ${PWD}/.config/pacman/aur.txt

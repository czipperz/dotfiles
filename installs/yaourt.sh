#!/usr/bin/bash
if [ ! -e /bin/yaourt ]; then
	echo "Installing yaourt"
	mkdir abs
	(cd abs
		curl -L "https://aur.archlinux.org/packages/ya/yaourt-git/yaourt-git.tar.gz" > yaourt-git.tar.gz
		curl -L "https://aur.archlinux.org/packages/pa/package-query-git/package-query-git.tar.gz" > package-query-git.tar.gz
		tar xf package-query-git.tar.gz
		(cd package-query-git makepkg -sci)
		tar xf yaourt-git.tar.gz
		(cd yaourt-git makepkg -sci)
	)
fi
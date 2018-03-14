#!/usr/bin/bash
if [ ! -e /bin/yaourt ]; then
    echo "Installing yaourt"
    mkdir abs
    (cd abs
     curl -L "https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz" > yaourt.tar.gz
     curl -L "https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz" > package-query.tar.gz
     tar xf package-query.tar.gz
     (cd package-query && makepkg -sci)
     tar xf yaourt.tar.gz
     (cd yaourt && makepkg -sci)
    )
fi

#!/usr/bin/bash
yaourt -S mpd ncmpcpp
mkdir -p .config/mpd/playlists
touch .config/mpd/{database,log,pid,state,sticker.sql}
ln dotfiles/mpd.conf .config/mpd/mpd.conf

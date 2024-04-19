#!/bin/bash

HOME="/home/scillidan"
SRC="$HOME/Git/goldendict_sources"
GD_HOME="$HOME/.config/goldendict"
GD_DATA="/usr/share/goldendict"
MY_GD="$HOME/Github/my_goldendict_linux"

rm -rf "$GD_HOME/styles"
rm -rf "$GD_HOME/fonts"
rm -rf "$GD_HOME/icons"
rm -rf "$GD_HOME/extras"

mkdir -p "$GD_HOME/styles/dark-theme"
cat "$SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/article-style.css" "$MY_GD/article-style-mix.css" > "$GD_HOME/styles/dark-theme/article-style.css"
ln -s "$SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/qt-style.css" "$GD_HOME/styles/dark-theme/qt-style.css"
ln -s "$SRC/GoldenDict-Full-Dark-Theme/GoldenDict/fonts" "$GD_HOME/fonts"
ln -s "$SRC/GoldenDict-Full-Dark-Theme/GoldenDict/icons" "$GD_DATA/icons"
ln -s "$SRC/GoldenDict-Full-Dark-Theme/GoldenDict/extras" "$GD_DATA/extras"

read -p "Press Enter to continue..."
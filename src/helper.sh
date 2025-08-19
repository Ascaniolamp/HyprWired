#!/bin/env bash
set -euo pipefail
sudo echo

if ! command -v yay &> /dev/null; then
	echo "Yay not installed, follow this tutorial:"
	echo "https://github.com/Jguer/yay#installation"
	echo "Aborting."
	exit 2
fi

BAKORDEL="backup"
if ! [ $# -eq 0 ] && ! [ -z $1 ]; then
	if [ "$1" == "--no-preserve" ]; then
		echo "This option will delete all your previous configurations."
		echo "It may also risk affecting other associated files."
		read -p "Are you sure you want to proceed? [y/N]: " yn
		case $yn in
			[Yy]*)
				RES=0
				;;
			[Nn]*)
				RES=1
				;;
			*)
				RES=1
				;;
		esac

		if [ $RES == 0 ]; then
			BAKORDEL="delete"
			echo "Proceeding by deletion."
		elif [ $RES == 1 ]; then
			echo "Aborting."
			exit 0
		fi
	else
		echo "install.sh: unrecognized option '$1'"
		echo
		echo "Usage: install.sh [OPTION]"
		echo "Options:"
		echo "  --no-preserve	Replace old files by deleting them. [DANGEROUS]"
	fi
fi

function ynprompt () {
	while true; do
		read -p "$* [Y/n]: " yn
		case $yn in
			[Yy]*)
				return 0
				;;
			[Nn]*)
				return 1
				;;
			*)
				return 0
				;;
		esac
	done
}

function handleold () {
	ACTOPTION=$1
	DIRFILE=$2

	case "$ACTOPTION" in
		"d" | "delete")
			sudo rm -r $DIRFILE || true
			;;

		"b" | "backup")
			sudo rm -r $DIRFILE.hyprlainbak || true
			sudo mv $DIRFILE $DIRFILE.hyprlainbak || true
			;;

		*)
			echo "Unrecognized argument \"$1\" passed to handleold function."
			exit 254
		;;
	esac

	sudo mkdir -p $(dirname "$DIRFILE")
}

function substitute () {
	ACTOPTION=$1
	DIRFILE=$2
	GITFILE=$3

	handleold "$ACTOPTION" "$DIRFILE"
	sudo cp -r $GITFILE $DIRFILE
}

function downdependencies () {
	PACPKGS=$1
	AURPKGS=$2

	sudo pacman -Syu --needed - < $PACPKGS || true
	yay -Syu --needed - < $AURPKGS || true
}

#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
YNH_PHP_VERSION="7.3"
# dependencies used by the app
# dependencies used by the app
pkg_dependencies=""

extra_php_dependencies="php${YNH_PHP_VERSION}-cli php${YNH_PHP_VERSION}-gettext php${YNH_PHP_VERSION}-curl php${YNH_PHP_VERSION}-intl php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-mbstring openssl"


#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
 # Check if there's enough free space in a directory
        is_there_enough_space () {
                local free_space=$(df --output=avail "$1" | sed 1d)
                test $free_space -ge $min_size
        }

        if is_there_enough_space /tmp; then
                local tmpdir=/tmp
        elif is_there_enough_space /var; then
                local tmpdir=/var
        elif is_there_enough_space /; then
                local tmpdir=/
        elif is_there_enough_space /home; then
                local tmpdir=/home
        else
		ynh_die "Insufficient free space to continue..."
        fi

        echo "$(mktemp --directory --tmpdir="$tmpdir")"
}

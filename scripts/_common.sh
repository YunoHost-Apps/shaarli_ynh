#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
YNH_PHP_VERSION="7.3"

extra_php_dependencies="php${YNH_PHP_VERSION}-cli php${YNH_PHP_VERSION}-gettext php${YNH_PHP_VERSION}-curl php${YNH_PHP_VERSION}-intl php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-mbstring"

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Check available space before creating a temp directory.
#
# usage: ynh_smart_mktemp --min_size="Min size"
#
# | arg: -s, --min_size= - Minimal size needed for the temporary directory, in Mb
ynh_smart_mktemp () {
        # Declare an array to define the options of this helper.
        declare -Ar args_array=( [s]=min_size= )
        local min_size
        # Manage arguments with getopts
        ynh_handle_getopts_args "$@"

        min_size="${min_size:-300}"
        # Transform the minimum size from megabytes to kilobytes
        min_size=$(( $min_size * 1024 ))

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

# Create a dedicated config file from a template
#
# examples:
#    ynh_add_config --template=".env" --destination="$final_path/.env"
#    ynh_add_config --template="../conf/.env" --destination="$final_path/.env"
#    ynh_add_config --template="/etc/nginx/sites-available/default" --destination="etc/nginx/sites-available/mydomain.conf"
#
# usage: ynh_add_config --template="template" --destination="destination"
# | arg: -t, --template=     - Template config file to use
# | arg: -d, --destination=    - Destination of the config file
#
# The template can be by default the name of a file in the conf directory
# of a YunoHost Package, a relative path or an absolute path
# The helper will use the template $template to generate a config file
# $destination by replacing the following keywords with global variables
# that should be defined before calling this helper :
#   __PATH__             by  $path_url
#   __NAME__            by $app
#   __NAMETOCHANGE__    by $app
#   __USER__            by $app
#   __FINALPATH__       by $final_path
#   __PHPVERSION__      by $YNH_PHP_VERSION
#
# And any dynamic variables that should be defined before calling this helper like:
#   __DOMAIN__   by $domain
#   __APP__      by $app
#   __VAR_1__    by $var_1
#   __VAR_2__    by $var_2
#
# The helper will verify the checksum and backup the destination file
# if it's different before applying the new template.
# And it will calculate and store the destination file checksum
# into the app settings when configuration is done.
#
#
ynh_add_config () {
    # Declare an array to define the options of this helper.
    local legacy_args=tdv
    local -A args_array=( [t]=template= [d]=destination= )
    local template
    local destination
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"
    local template_path

    if [ -f "../conf/$template" ]; then
        template_path="../conf/$template"
    elif [ -f "../settings/conf/$template" ]; then
        template_path="../settings/conf/$template"
    elif [ -f "$template" ]; then
        template_path=$template
    else
        ynh_die --message="The provided template $template doesn't exist"
    fi

    ynh_backup_if_checksum_is_different --file="$destination"

    cp "$template_path" "$destination"

    ynh_replace_vars --file="$destination"

    ynh_store_file_checksum --file="$destination"
}

# Replace variables in a file
#
# usage: ynh_replace_vars --file="file"
# | arg: -f, --file=     - File where to replace variables
#
# The helper will replace the following keywords with global variables
# that should be defined before calling this helper :
#   __PATH__             by  $path_url
#   __NAME__            by $app
#   __NAMETOCHANGE__    by $app
#   __USER__            by $app
#   __FINALPATH__       by $final_path
#   __PHPVERSION__      by $YNH_PHP_VERSION
#
# And any dynamic variables that should be defined before calling this helper like:
#   __DOMAIN__   by $domain
#   __APP__      by $app
#   __VAR_1__    by $var_1
#   __VAR_2__    by $var_2
#
#
ynh_replace_vars () {
    # Declare an array to define the options of this helper.
    local legacy_args=f
    local -A args_array=( [f]=file= )
    local file
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"

    # Replace specific YunoHost variables
    if test -n "${path_url:-}"
    then
        # path_url_slash_less is path_url, or a blank value if path_url is only '/'
        local path_url_slash_less=${path_url%/}
        ynh_replace_string --match_string="__PATH__/" --replace_string="$path_url_slash_less/" --target_file="$file"
        ynh_replace_string --match_string="__PATH__" --replace_string="$path_url" --target_file="$file"
    fi
    if test -n "${app:-}"; then
        ynh_replace_string --match_string="__NAME__" --replace_string="$app" --target_file="$file"
        ynh_replace_string --match_string="__NAMETOCHANGE__" --replace_string="$app" --target_file="$file"
        ynh_replace_string --match_string="__USER__" --replace_string="$app" --target_file="$file"
    fi
    if test -n "${final_path:-}"; then
        ynh_replace_string --match_string="__FINALPATH__" --replace_string="$final_path" --target_file="$file"
    fi
    if test -n "${YNH_PHP_VERSION:-}"; then
        ynh_replace_string --match_string="__PHPVERSION__" --replace_string="$YNH_PHP_VERSION" --target_file="$file"
    fi
    if test -n "${ynh_node_load_PATH:-}"; then
        ynh_replace_string --match_string="__YNH_NODE_LOAD_PATH__" --replace_string="$ynh_node_load_PATH" --target_file="$file"
    fi

    # Replace others variables

    # List other unique (__ __) variables in $file
    local uniques_vars=( $(grep -o '__[A-Z0-9_]*__' $file | sort --unique | sed "s@__\([^.]*\)__@\L\1@g" ))

    # Do the replacement
    local delimit=@
    for one_var in "${uniques_vars[@]}"
    do
        # Validate that one_var is indeed defined
        test -n "${!one_var:-}" || ynh_die --message="\$$one_var wasn't initialized when trying to replace __${one_var^^}__ in $file"

        # Escape delimiter in match/replace string
        match_string="__${one_var^^}__"
        match_string=${match_string//${delimit}/"\\${delimit}"}
        replace_string="${!one_var}"
        replace_string=${replace_string//${delimit}/"\\${delimit}"}

        # Actually replace (sed is used instead of ynh_replace_string to avoid triggering an epic amount of debug logs)
        sed --in-place "s${delimit}${match_string}${delimit}${replace_string}${delimit}g" "$file"
    done
}


#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

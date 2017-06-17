#
# Common variables
#

# Shaarli version
VERSION="0.9.0"

# Download shaarli (dependencies included)
# Full Shaarli sources tarball URL
SHAARLI_SOURCE_URL=https://github.com/shaarli/Shaarli/releases/download/v${VERSION}/shaarli-v${VERSION}-full.tar.gz

# Full Shaarli sources tarball checksum
SHAARLI_SOURCE_SHA256="54c8e8d2998c5ab5ffd08ae8f1fa11276773c16c"

#
# Common helpers
#

# Source app helpers
. /usr/share/yunohost/helpers

# Add path
ynh_normalize_url_path () {
	path_url=$1
	test -n "$path_url" || ynh_die "ynh_normalize_url_path expect a URL path as first argument and received nothing."
	if [ "${path_url:0:1}" != "/" ]; then    # If the first character is not a /
		path_url="/$path_url"    # Add / at begin of path variable
	fi
	if [ "${path_url:${#path_url}-1}" == "/" ] && [ ${#path_url} -gt 1 ]; then    # If the last character is a / and that not the only character.
		path_url="${path_url:0:${#path_url}-1}"	# Delete the last character
	fi
	echo $path_url
}

# Download and extract Shaarli sources to the given directory
# usage: extract_shaarli DESTDIR [AS_USER]
extract_shaarli() {
    local AS_USER=${6:-$USER}

    # Retrieve and extract Shaarli tarball
    sh_tarball="/tmp/shaarli.tar.gz"
    rm -f "$sh_tarball"
    wget -q -O "$sh_tarball" "$SHAARLI_SOURCE_URL" \
        || ynh_die "Unable to download Shaarli tarball"
    echo "$SHAARLI_SOURCE_SHA256 $sh_tarball" | sha256sum -c >/dev/null \
        || ynh_die "Invalid checksum of downloaded tarball"
    sudo tar xf "$sh_tarball" -C "$final_path" --strip-components 1 \
        || ynh_die "Unable to extract Shaarli tarball"
    rm -f "$sh_tarball"

    wget -q -O "$sh_tarball" "$SHAARLI_SOURCE_URL" \
        || ynh_die "Unable to download Shaarli tarball"
    echo "$SHAARLI_SOURCE_SHA256 $sh_tarball" | sha256sum -c >/dev/null \
        || ynh_die "Invalid checksum of downloaded tarball"
    sudo tar xf "$sh_tarball" -C "$final_path" --strip-components 1 \
        || ynh_die "Unable to extract Shaarli tarball"
    sudo chown -R www-data: $final_path
}

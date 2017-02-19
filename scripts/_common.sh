#
# Common variables
#

# Shaarli version
VERSION="0.8.3"

# Download shaarli (dependencies included)
# Full Shaarli sources tarball URL
SHAARLI_SOURCE_URL=https://github.com/shaarli/Shaarli/releases/download/v${VERSION}/shaarli-v${VERSION}-full.tar.gz

# Full Shaarli sources tarball checksum
SHAARLI_SOURCE_SHA256="dbf0fd3fbe679ebd642ddef5f5a90244e07beda28d1aedd35ef04f9c7d74068f"

#
# Common helpers
#

# Source app helpers
. /usr/share/yunohost/helpers

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

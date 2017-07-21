#!/bin/sh
# redirect stderr to stdout
exec 2>&1

PROGNAME=`basename $0`

error_exit()
{
	echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	exit 1
}

[ "$#" == "0" ] && exit_error "ERROR: no directory specified."

src="$1/source/"
dest="$1/public_html/"
key="$1/key/id_rsa"

shift

cd "$src" || error_exit "ERROR: source directory does not exist."

echo "[====] Building Webpage [====]"
env JEKYLL_ENV=production jekyll bundle exec build "$@" || error_exit "ERROR: Building webpage via Jekyll failed."

echo
echo "[====] Installing Webpage [====]"
rsync -avc --delete --chown www:www _site/ "$dest" || error_exit "ERROR: Installing new webpage via rsync failed."

#!/bin/sh
# redirect stderr to stdout
exec 2>&1

PROGNAME=`basename $0`

error_exit()
{
	echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	exit 1
}

src="$1/source/"
dest="$1/public_html/"
key="$1/key/id_rsa"

cd "$src" || error_exit "ERROR: source directory does not exist."

echo "[====] Updating Webpage Source [====]"
GIT_SSH_COMMAND="ssh -i '$key' -o StrictHostKeyChecking=no"
export GIT_SSH_COMMAND
git checkout master && git pull origin master || error_exit "ERROR: Updating webpage via Git failed."

echo
echo "[====] Building Webpage [====]"
env JEKYLL_ENV=production bundle exec jekyll build --incremental || error_exit "ERROR: Building webpage via Jekyll failed."

echo
echo "[====] Installing Webpage [====]"
rsync -avc --delete --chown www:www _site/ "$dest" || error_exit "ERROR: Installing new webpage via rsync failed."

#!/bin/sh

src="$1/source/"
dest="$1/public_html/"
key="$1/key/id_rsa"

cd "$src" || exit 1
echo "Updating Webpage Source..."
GIT_SSH_COMMAND="ssh -i '$key' -o StrictHostKeyChecking=no"
export GIT_SSH_COMMAND
git checkout master && git pull origin || exit 1

echo "Building Webpage..."
jekyll build --incremental || exit 1

echo
echo "Installing Webpage..."
rsync -av --delete --chown www:www _site/ "$dest"

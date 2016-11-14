#!/bin/sh

src=/usr/local/www/sites/cartwrig.ht/source/
dest=/usr/local/www/sites/cartwrig.ht/public_html/

cd ${src} || exit 1
echo "Updating Webpage Source..."
GIT_SSH_COMMAND='ssh -i /usr/local/www/key/id_rsa -o "StrictHostKeyChecking no"'
export GIT_SSH_COMMAND
git checkout master && git pull origin

echo "Building Webpage..."
jekyll build --incremental || exit 1

echo
echo "Installing Webpage..."
rsync -av --delete --chown www:www _site/ ${dest}

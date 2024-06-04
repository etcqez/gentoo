set -ue

# portage/package
[[ -a /etc/portage/package.accept_keywords ]] && sudo rm /etc/portage/package.accept_keywords -rf
[[ -a /etc/portage/package.license ]] && sudo rm /etc/portage/package.license -rf
[[ -a /etc/portage/package.use ]] && sudo rm /etc/portage/package.use -rf
sudo ln -s ~/mygentoo/package.accept_keywords /etc/portage/package.accept_keywords
sudo ln -s ~/mygentoo/package.license /etc/portage/package.license
sudo ln -s ~/mygentoo/package.use /etc/portage/package.use

# binhost
sudo ln -sf ~/mygentoo/gentoobinhost.conf /etc/portage/binrepos.conf/gentoobinhost.conf

set -ue

# portage/package
[[ -a /etc/portage/package.accept_keywords ]] && sudo rm /etc/portage/package.accept_keywords -rf
[[ -a /etc/portage/package.license ]] && sudo rm /etc/portage/package.license -rf
[[ ! -a /etc/portage/package.use ]] && sudo mkdir /etc/portage/package.use
[[ -a /etc/portage/package.use ]] && sudo rm /etc/portage/package.use/* -rf
sudo ln ~/mygentoo/package.accept_keywords /etc/portage/package.accept_keywords
sudo ln ~/mygentoo/package.license /etc/portage/package.license
sudo ln ~/mygentoo/package.use/* /etc/portage/package.use/

# binhost
sudo ln -f ~/mygentoo/gentoobinhost.conf /etc/portage/binrepos.conf/gentoobinhost.conf
sudo ln -f ~/mygentoo/gentoo.conf /etc/portage/repos.conf/gentoo.conf

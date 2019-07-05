# /bin/bash
apt install -y qemu qemu-user-static binfmt-support
update-binfmts --enable qemu-arm
git clone git@github.com:cfc19argbcn/raspberry.git

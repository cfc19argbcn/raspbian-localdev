# /bin/bash
apt install -y qemu qemu-user-static binfmt-support
update-binfmts --enable qemu-arm
docker pull philipz/rpi-raspbian

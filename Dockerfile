FROM philipz/rpi-raspbian

COPY raspberry /root/raspberry


ENTRYPOINT apt update && \
apt install -y git python curl bzip2 && \
git clone https://bitbucket.org/sol_prog/raspberry-pi-gcc-binary.git && \
cd raspberry-pi-gcc-binary && \
tar -xjvf gcc-9.1.0-armhf-raspbian.tar.bz2 && \
mv gcc-9.1.0 /opt && \
ln -s /usr/include/arm-linux-gnueabihf/sys /usr/include/sys && \
ln -s /usr/include/arm-linux-gnueabihf/bits /usr/include/bits && \
ln -s /usr/include/arm-linux-gnueabihf/gnu /usr/include/gnu && \
ln -s /usr/include/arm-linux-gnueabihf/asm /usr/include/asm && \
ln -s /usr/lib/arm-linux-gnueabihf/crti.o /usr/lib/crti.o && \
ln -s /usr/lib/arm-linux-gnueabihf/crt1.o /usr/lib/crt1.o && \
ln -s /usr/lib/arm-linux-gnueabihf/crtn.o /usr/lib/crtn.o && \
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
python get-pip.py && \
bash

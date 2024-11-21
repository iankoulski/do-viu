#!/bin/sh

if [ -d /etc/apt ]; then
        [ -n "$http_proxy" ] && echo "Acquire::http::proxy \"${http_proxy}\";" > /etc/apt/apt.conf; \
        [ -n "$https_proxy" ] && echo "Acquire::https::proxy \"${https_proxy}\";" >> /etc/apt/apt.conf; \
        [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf
fi

git clone https://github.com/atanunq/viu.git
cd viu
cargo install --path .

echo "alias ll='ls -alh --color=auto'" >> /root/.bashrc
echo "/welcome.sh" >> /root/.bashrc


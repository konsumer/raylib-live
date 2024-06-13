#!/bin/sh

rm -rf wbuild

apt update
apt install -y ninja-build

sudo chown -R 100:65534 "/root/.npm"

npm start

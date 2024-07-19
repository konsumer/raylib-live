#!/bin/sh

rm -rf wbuild

apt update
apt install -y ninja-build

npm start

#!/bin/bash -e
sed -r -e 's!http://.*archive\.ubuntu\.com/ubuntu/?!mirror://mirrors.ubuntu.com/mirrors.txt!' -i /etc/apt/sources.list
apt-get update
apt-get install -y git haskell-stack emacs
# ubuntu-desktop

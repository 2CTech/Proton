#!/bin/sh

#set up steam runtimes. remove these lines if building without the runtime
git clone https://github.com/ValveSoftware/steam-runtime.git
./steam-runtime/setup_docker.sh amd64 --extra-bootstrap=/home/vagrant/proton/steamrt-bootstrap.sh steam-proton-dev
./steam-runtime/setup_docker.sh i386 --extra-bootstrap=/home/vagrant/proton/steamrt-bootstrap.sh steam-proton-dev32
(cd steam-runtime && ./build-runtime.py --output=./runtime/)

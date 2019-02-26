Bootstrap: docker
From: debian:stretch

%help
    Contains necessary packages and libraries to build image FastSim-Container (https://github.com/vrastil/FastSim-Container).

%post
    # get libraries from package manager
    apt-get -y update && apt-get install -y --no-install-recommends apt-utils
    apt-get -y install build-essential
    apt-get -y install gcc-6 g++-6 libstdc++6 python python-pip
    apt-get -y install cmake git swig wget vim valgrind tar
    apt-get -y install libgsl-dev libfftw3-dev pkg-config libbz2-dev
    pip install numpy

    # data directory -- all building should be done here
    mkdir /data

    # install boost manually (need new version)
    cd /data
    wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.bz2
    tar --bzip2 -xf boost_1_69_0.tar.bz2 && cd boost_1_69_0
    ./bootstrap.sh --with-libraries=program_options,filesystem,system,log,timer,thread
    ./b2 install
    cd .. && rm -rf boost_1_69_0


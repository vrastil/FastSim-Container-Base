Bootstrap: docker
From: debian:stretch

%help
    Contains necessary packages and libraries to build image FastSim-Container (https://github.com/vrastil/FastSim-Container).

%post
    apt-get -y update
    apt-get -y install build-essential
    apt-get -y install gcc-6 g++-6 libstdc++6 python python-pip
    apt-get -y install cmake git swig wget vim valgrind
    apt-get -y install libgsl-dev libfftw3-dev pkg-config
    apt-get -y install libboost-all-dev
    pip install numpy

    # get all libraries
    mkdir /data && cd /data
    git clone https://github.com/vrastil/FastSim.git && cd FastSim
    git submodule update --init --recursive

    #######
    # CCL #
    #######
    mkdir build && cd build
    cmake ..
    make ccl


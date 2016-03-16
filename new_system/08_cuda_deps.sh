# working driver version for laptop
# software source: graphic drivers ppa
# version: 352-updates
# install driver using apt-get
# install nvidia-prime from apt-get
# Switch profiles using prime-switch [intel, nvidia]


# update package list
sudo apt-get update

# install dependencies for cuda
sudo apt-get install sudo apt-get install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libgl1-mesa-glx libglu1-mesa libglu1-mesa-dev

# install cuda from nvidia run file, don't install driver
# LD_LIBRARY_PATH needs updating for cuda running libraries like fft etc
# /usr/local/cuda/lib64

# get package updates
sudo apt-get update

# install pip package manager
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

# install virtualenv
sudo pip install virtualenv virtualenvwrapper

# install scipy
# dependencies
sudo apt-get -y install gcc gfortran python-dev libblas-dev liblapack-dev cython libpng12-dev libfreetype6-dev
# install scipy
sudo pip install ipython numpy matplotlib pandas sympy nose scipy

# remove pip installer
rm get-pip.py

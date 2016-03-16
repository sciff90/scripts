# update package list
sudo apt-get update

# get ruby-install
git clone https://github.com/postmodern/ruby-install.git $HOME/git/ruby-install

sudo $HOME/git/ruby-install/bin/ruby-install --system --latest ruby

# ruby gems
git clone https://github.com/rubygems/rubygems.git $HOME/git/rubygems
sudo ruby $HOME/git/rubygems/setup.rb



# vagrant init box-cutter/ubuntu1404-desktop; vagrant up --provider virtualbox

echo "* Install Base tools"
sudo apt-get install vim git curl -y

echo " * Setup installers for Ruby, Node, Chrome"
# ruby
sudo apt-add-repository ppa:brightbox/ruby-ng -y                           
# node
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -                
# chrome
curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# process these new repos
sudo apt-get update

echo "* Install Ruby 2.2, Node 4.x, Bundler"

sudo apt-get install ruby2.2 ruby2.2-dev zlib1g-dev nodejs -y
sudo gem install bundler

echo "* Install Chrome"
sudo apt-get install google-chrome-stable -y

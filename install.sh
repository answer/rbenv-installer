dir=`pwd`

echo 'export PATH="'$dir'/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile

git clone git://github.com/sstephenson/rbenv.git .rbenv
mkdir -p .rbenv/plugins
cd .rbenv/plugins/
git clone git://github.com/sstephenson/ruby-build.git

echo
echo
echo "rbenv install complete."
echo
echo "whole command lines"
echo
echo '$ echo ''export PATH="'$dir'/.rbenv/bin:$PATH"'' >> .bash_profile'
echo '$ echo ''eval "$(rbenv init -)"'' >> .bash_profile'
echo '$ git clone git://github.com/sstephenson/rbenv.git .rbenv'
echo '$ mkdir -p .rbenv/plugins'
echo '$ cd .rbenv/plugins/'
echo '$ git clone git://github.com/sstephenson/ruby-build.git'
echo
echo
echo "you have to execute following command line"
echo
echo "to activate rbenv"
echo "$ . .bash_profile"
echo
echo "to install ruby"
echo "$ rbenv install -l # list of versions"
echo "$ rbenv install <version>"
echo
echo "to install bundler gem"
echo "$ rbenv local <version>"
echo "$ gem install bundler"
echo "$ rbenv rehash"

dir=`pwd`

git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="'$dir'/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile
mkdir -p .rbenv/plugins
cd .rbenv/plugins/
git clone git://github.com/sstephenson/ruby-build.git
cd ../..
. .bash_profile

echo
echo
echo "rbenv install complete."
echo "to install ruby"
echo "$ rbenv install <version>"
echo "$ rbenv rehash"
echo
echo "to install bundler gem"
echo "$ rbenv local <version>"
echo "$ gem install bundler"

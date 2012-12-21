dir=`pwd`

echo 'git clone git://github.com/sstephenson/rbenv.git .rbenv'
git clone git://github.com/sstephenson/rbenv.git .rbenv

echo 'echo ''export PATH="'$dir'/.rbenv/bin:$PATH"'' >> .bash_profile'
echo 'export PATH="'$dir'/.rbenv/bin:$PATH"' >> .bash_profile

echo 'echo ''eval "$(rbenv init -)"'' >> .bash_profile'
echo 'eval "$(rbenv init -)"' >> .bash_profile

echo 'mkdir -p .rbenv/plugins'
mkdir -p .rbenv/plugins

echo 'cd .rbenv/plugins/'
cd .rbenv/plugins/

echo 'git clone git://github.com/sstephenson/ruby-build.git'
git clone git://github.com/sstephenson/ruby-build.git

echo
echo
echo "rbenv install complete."
echo
echo "to activate rbenv"
echo "$ . .bash_profile"
echo
echo "to install ruby"
echo "$ rbenv install <version>"
echo
echo "to install bundler gem"
echo "$ rbenv local <version>"
echo "$ gem install bundler"
echo "$ rbenv rehash"

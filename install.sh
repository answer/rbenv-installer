dir=`pwd`

echo 'export PATH="'$dir'/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile

if [ -d .rbenv ]; then
  cd .rbenv && git pull
  cd ..
else
  git clone git://github.com/sstephenson/rbenv.git .rbenv
fi

mkdir -p .rbenv/plugins && cd .rbenv/plugins/

if [ -d ruby-build ]; then
  cd ruby-build && git pull
  cd ..
else
  git clone git://github.com/sstephenson/ruby-build.git
fi

if [ -d rbenv-binstubs ]; then
  cd rbenv-binstubs && git pull
  cd ..
else
  git clone https://github.com/ianheggie/rbenv-binstubs.git
fi

echo
echo
echo "rbenv install complete."
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

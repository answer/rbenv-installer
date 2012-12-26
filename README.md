rbenv-installer
===============

rbenv のインストールスクリプト

## usage

    curl -L https://raw.github.com/answer/rbenv-installer/master/install.sh | bash

## 実行されるコマンド

    $ dir=`pwd`
    $ echo 'export PATH="'$dir'/.rbenv/bin:$PATH"' >> .bash_profile
    $ echo 'eval "$(rbenv init -)"' >> .bash_profile
    $ git clone git://github.com/sstephenson/rbenv.git .rbenv
    $ mkdir -p .rbenv/plugins
    $ cd .rbenv/plugins/
    $ git clone git://github.com/sstephenson/ruby-build.git

## この後に実行するコマンド

rbenv を有効にする

    $ . .bash_profile

ruby をインストールする

    $ rbenv install -l # -l オプションでバージョンを表示
    $ rbenv install <version>

ruby を使用するディレクトリで以下のコマンドを実行して環境を整える

    $ rbenv local <version>
    $ gem install bundler
    $ rbenv rehash

rbenv-installer
===============

rbenv のインストールスクリプト

## usage

    curl -L https://raw.github.com/answer/rbenv-installer/master/install.sh | bash

## 実行されるコマンド

1. `.bash_profile` に PATH の export を追記
2. rbenv を .rbenv にクローン or pull
3. ruby-build を .rbenv/plugins にクローン or pull
4. rbenv-binstubs を .rbenv/plugins にクローン or pull

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

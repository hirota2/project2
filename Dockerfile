# syntax = docker/dockerfile:1

# This Dockerfile is designed for production, not development. Use with Kamal or build'n'run by hand:
# docker build -t my-app .
# docker run -d -p 80:80 -p 443:443 --name my-app -e RAILS_MASTER_KEY=<value from config/master.key> my-app

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
# ベースイメージとしてRubyのスリムバージョンを使用
ARG RUBY_VERSION=3.3.5
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libmariadb-dev-compat \
    default-libmysqlclient-dev \
    nodejs \
    npm

# Yarnのインストール
RUN npm install -g yarn

# Railsアプリケーションの作業ディレクトリを設定
WORKDIR /rails

# GemfileとGemfile.lockをコンテナにコピー
COPY Gemfile /rails/Gemfile
COPY Gemfile.lock /rails/Gemfile.lock

# Bundlerをインストールし、gemをインストール
RUN gem install bundler -v '2.3.26'
RUN bundle install

# Railsがインストールされていない場合は、グローバルにRailsをインストール
RUN gem install rails

# アプリケーションの全ファイルをコピー
COPY . /rails

# サーバーPIDファイルの削除（Railsサーバーが再起動時にエラーになるのを防ぐ）
RUN rm -f tmp/pids/server.pid

# デフォルトのコマンド（必要に応じて上書き可能）
CMD ["rails", "server", "-b", "0.0.0.0"]
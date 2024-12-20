# 最新の安定版Rubyを使用
FROM ruby:3.3

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  default-libmysqlclient-dev \
  nodejs \
  yarn \
  imagemagick \
  vim

# 作業ディレクトリの作成
WORKDIR /app

# Gemfileをコピーしてbundle install
COPY Gemfile ./
RUN bundle install

# ソースコードをコピー
COPY . .

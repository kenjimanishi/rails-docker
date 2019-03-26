# Debianがベースのrubyイメージを指定
FROM ruby:2.5.1

# 必要なものをインストール
RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev \
    nodejs \
    mysql-client

# rails用のディレクトリを作成
RUN mkdir /rails-app

# ローカルからコンテナの中にファイルをコピー
COPY rails-app/Gemfile* /rails-app/
COPY build/rails-app-entrypoint.sh /tmp

# 作業ディレクトリを指定
WORKDIR /rails-app

# 上でコピーしたGemfileに従ってGemをインストール
RUN gem install bundler && bundle install
# 上でコピーしたentrypoint用シェルを実行
# ENTRYPOINT /tmp/rails-app-entrypoint.sh

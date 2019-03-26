# rails-docker
## Dockerコンテナ上でRailsアプリを新規作成
```
$ docker-compose run app rails new . -f -d mysql
#（-f:ファイル上書き許可、-d:DB種別の指定）
```

### rails-app/config/database.ymlを編集
### build/Dockerfileの「ENTRYPOINT /tmp/app-entrypoint.sh」のコメントアウトを外す

## Gemfileが更新されたのでDockerイメージ再構築
```
$ docker-compose build
```
## コンテナを起動
```
$ docker-compose up -d
```

# rails-docker
## これは何？
* Dockerコンテナ内でRailsアプリを稼働させることができるテンプレートのようなもの
## 手順
1. Dockerコンテナ上でRailsアプリを新規作成
```
$ docker-compose run app rails new . -f -d mysql
#（-f:ファイル上書き許可、-d:DB種別の指定）
```
2. rails-app/config/database.ymlを編集
3. build/Dockerfileの「ENTRYPOINT /tmp/app-entrypoint.sh」のコメントアウトを外す

4. Gemfileが更新されたのでDockerイメージ再構築
```
$ docker-compose build
```
5. コンテナを起動
```
$ docker-compose up -d
```
6. ブラウザでRailsが実行されていることを確認 
* [localhost:3030](http://localhost:3030/)

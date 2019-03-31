# rails-docker ver1.0 [in English](README_en.md)
## これは何？
* Dockerコンテナ内でRailsアプリを稼働させることができるテンプレートのようなもの

## 手順（2ステップのみ！）
1. `init.sh` を実行
```
$ ./init.sh
```
2. ブラウザでRails・phpMyAdminが実行されていることを確認
* [localhost:3030](http://localhost:3030/) <-- Rails App
* [localhost:13030](http://localhost:13030/) <-- phpMyAdmin（MySQL Management GUI Tool）

## バージョン・設定値
|  名前  | バージョン / 設定値   |
| -- | -- |
| Rails | 5.2 |
| Ruby | 2.6 |
| MySQL | 5.7 |
| TIME_ZONE | UTC |

## 備考
`chromedriver-helper` -> `webdrivers`

（参考 -> [NOTICE: Ending support for this gem](https://github.com/flavorjones/chromedriver-helper/issues/83)）

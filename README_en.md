# rails-docker ver1.0 [in Japanese](README.md)
## What is this?
* A kind of template that can run Rails app inside Docker container

## Procedure (2 steps only!)
1. Run `init.sh`
```
$ ./init.sh
```
2. Confirm that Rails · phpMyAdmin is running in your browser
* [localhost:3030](http://localhost:3030/) <-- Rails App
* [localhost:13030](http://localhost:13030/) <-- phpMyAdmin（MySQL Management GUI Tool）

## Version, Settings
| Name | Version / Settings |
| -- | -- |
| Rails | 5.2 |
| Ruby | 2.6 |
| MySQL | 5.7 |
| TIME_ZONE | UTC |

## Remarks
`chromedriver-helper` -> ` webdrivers`

(Reference-> [NOTICE: Ending support for this gem](https://github.com/flavorjones/chromedriver-helper/issues/83)）

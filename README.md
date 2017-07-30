# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

$ ruby -v  
ruby 2.2.3p319 (2016-04-26 revision 54774) [x86_64-darwin16]
* System dependencies

* Configuration

* Database creation sqlite3

* Database initialization

* How to run the test suite
```
$ bundle exec whenever --update-crontab
[write] crontab file updated
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## System Requirement
Railsでmercariから商品一覧をスクレイピングし、そのデータを
閲覧できるアプリケーションを作成してください

* 対象商品一覧
https://www.mercari.com/jp/category/959/
* 1時間に1回 最大100件分の商品を取得する処理をRails runnerでcron実行
* 商品データをmysql or psql or sqliteのテーブルへ登録。対象データは一覧より取得できるもののみ。
* 同じ商品は重複して登録しない
* 登録したデータをscaffoldのindexのみで閲覧できるようにする。編集や削除は不要です。
rails serverでlocalhostからのみの接続
* mercariへ過度なアクセスを行いご迷惑を掛けないように。

## System Basic Design
### Table設計

#### テーブル項目一覧
##### 商品テーブル items

 論理名 | 物理名 | データ種別 | データ型 | NOT NULL制約 | DEFAULT値 | 備考
------------ | ------------- | ------------- | ------------- | ------------- | ------------- | -------------
商品ID | id | 数値 | integer | Y | auto increment
商品コード | code | 文字列 | string | Y | |
商品詳細URL | url | 文字列 | string |  | |
商品名 | name | 文字列 | string |  | |
商品金額 | price | 数値 | decimal |  | |
税額 | tax_price | 数値 | decimal |  | |
SOLD OUT | soldout | ブール | boolean |  | |

##### 商品画像テーブル item_photos

 論理名 | 物理名 | データ種別 | データ型 | NOT NULL制約 | DEFAULT値 | 備考
------------ | ------------- | ------------- | ------------- | ------------- | ------------- | -------------
商品画像ID | id | 数値 | integer | Y | auto increment
商品画像URL | url | 文字列 | string | Y | |
商品ID | item_id | 数値| integer | Y | |


[https://github.com/KAZUKI1994/scraping_mercari/issues/1](Issue#1 設計：商品情報を格納するテーブル項目一覧)


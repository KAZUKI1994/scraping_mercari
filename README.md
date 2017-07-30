# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.2.3
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

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



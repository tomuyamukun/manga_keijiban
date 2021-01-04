# アプリ名

MANGA TALK

# 概要

製作者がログインし漫画投稿機能を行うとその漫画の画像とリンクが掲載される
そこへクライアントがアクセスすると漫画の紹介ページがありそこで色々なコメントを
行うことができる

# 本番環境

https://manga-keijiban.herokuapp.com/

ログイン情報(テスト用)
・E メール aaa@dom
・password a0a0a0

# 制作背景

漫画が好きなので好きな漫画について語れる場所を作ろうと思い実装、世間一般にある２ ch などの掲示板サイトでは幅が広すぎて特定の物を探し、語るには不便だと考え、自分が投稿したものだけ語れるようにしました。
漫画の紹介も兼ねているのでアマゾンリンクを貼りそのまま購入できるようにもしました

# DEMO

### トップページ

![トップページ](https://gyazo.com/79e91b7a9ca22cd2827f376aad440f3c)
ページ中央に漫画の一覧を載せ、収まらない部分は横スクロールすることで閲覧することができます。
またページ左上にハンバーガーメニューをつけクリックすることで投稿した漫画一覧をみることができます

### 漫画の新規投稿機能

![新規投稿](https://gyazo.com/6aa0a557b408353c6ea12a14ad93a55a)
製作者のみが新規投稿ページに入れるように BASIC 認証をとりいれています
新規投稿ページにて漫画名、あらすじ、画像、リンクをはることで投稿できます１つでも欠けていると
投稿できずエラーメッセージが表示されるようになっています

### 掲示版機能

![掲示版](https://gyazo.com/f9dd40f793f630178f584b89fd8708b1)
漫画の紹介ページにて掲示版機能を実装しています、掲示版の枠の右上の新規投稿するをクリックすると名前とテキストをうつページに遷移し
そこで名前とテキストを投稿すると漫画の紹介ページにてコメントが追加されます、コメントは名前、テキスト、投稿した時間が表示され、
古いものから順に記載され、名前を空欄ににて投稿すると「名無しです」が表示されます

### 外部リンク機能

![外部リンク](https://gyazo.com/07cfd817286f66a06a10abcc3e486507)
漫画の紹介ページにてあらすじの最後にリンクがついておりそこをクリックすることで Amazon の商品ページに遷移することができます。

# 使用技術（開発環境）

## バックエンド

Ruby,Ruby on Rails

## フロントエンド

Sass,Html

## データベース

MySQL,SequelPro

## サーバー

Heroku

## ソース管理

GitHub, GitHubDesktop

## エディタ

VSCode

## 課題や今後実装したい機能

・漫画の掲示版機能がどのぐらい活発化を示す機能をつくりたい
・各漫画の評価機能を実装しどれくらい人気があるかを目視できるようにしたい

# テーブル設計

## users テーブル

| column             | Type   | options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| nickname           | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :comics

## comics テーブル

| column  | Type       | options                       |
| ------- | ---------- | ----------------------------- |
| title   | string     | null: false                   |
| link    | string     | null: false                   |
| summary | text       | null: false                   |
| user    | references | null: false foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| column | Type       | options                       |
| ------ | ---------- | ----------------------------- |
| name   | string     | null: false                   |
| user   | references | foreign_key: true             |
| comic  | references | null: false foreign_key: true |
| text   | strng      | null: false                   |

### Association

- belongs_to :comic

# carspost（仮）

車好きな人が、自慢の車を共有しあうSNSを作ってみました

## 開発環境

* windows
* Ruby on Rails   7.0.0
* mysql 
* s3
* デプロイ：Render

## 制作背景

作成者である私自身が車が好きで、「車」をみたい！、「車」が好き！、「車」を自慢したい！という方が扱うSNSがあったら便利だなという思いで作成しました。

# 使用gem

* gem "pry-rails"
* gem "devise"
* gem "rails-i18n"
* gem "devise-i18n-views"
* gem "mini_magick"
* gem "image_processing", "~> 1.2"
* group :production do
    gem 'pg'
  end
* gem "aws-sdk-s3", require: false

# テーブル設計（仮）

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

## postsテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| user_id       | references | null: false |
| text          | string     | null: false |

# 今後の実装内容

* ユーザーにプロフィール情報を持たせる
* コメント機能を実装する
* タグ付けれるようにし、利便性を向上させる
* ダイレクトメッセージみたいな機能を実装する
* イイネ機能を実装する
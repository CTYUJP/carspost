# carspost（仮）

車好きな人が、自慢の車を共有しあうSNSを作ってみました

## 開発環境

* windows
* Ruby on Rails   7.0.0
* mysql 

## 制作背景

作成者である私自身が車が好きで、「車」好きの方が扱うSNSがあったら便利だなという思いで作成しました。

# テーブル設計（仮）

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association

後に記載

## postsテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| user_id       | references | null: false |
| text          | string     | null: false |

### Association

後に記載

## tagsテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| post_id       | references | null: false |
| text          | string     | null: false |

### Association

後に記載

## post_tagsテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| tag_id        | references | null: false |
| post_id       | references | null: false |

### Association

後に記載

## commentsテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| user_id       | references | null: false |
| post_id       | references | null: false |
| text          | references | null: false |

### Association

後に記載

## likesテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| user_id       | references | null: false |
| post_id       | references | null: false |

### Association

後に記載

## photosテーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| post_id       | references | null: false |
| image         | text       | null: false |

### Association

後に記載
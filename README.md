# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# usersテーブル
| Column   | Type               | Options                   |
| -------- | ------------------ | ------------------------- |
| nickname | string             | null: false,              |
| email    | string             | null: false, unique: true |
| password | string             | encrypted_password        |
| name1    | string             | null: false               |
| name2    | string             | null: false               |
| birthday | date               | null: false               |

### Association
- has_many :items
- has_many :purchase


# itemsテーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| product_name | string  | null: false |
| description  | string  | null: false |
| category     | integer | null: false |
| condition    | string  | null: false |
| price        | integer | null: false |

### Association
- belongs_to :user
- has_one :purchase


# purchases テーブル
| Column            | Type    | Options     |
| ----------------- | ------- | ----------- |
| postal_number     | string  | null: false |
| prefectures       | string  | null: false |
| municipalities    | string  | null: false |
| address           | string  | null: false |
| visit_name        | string  | null: false |
| phone_number      | string  | null: false |

### Association
- has_one :item
- belongs_to :user

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
| Column             | Type               | Options                   |
| ------------------ | ------------------ | ------------------------- |
| nickname           | string             | null: false,              |
| email              | string             | null: false, unique: true |
| encrypted_password | string             | null: false               |
| last_name          | string             | null: false               |
| first_name         | string             | null: false               |
| last_name2         | string             | null: false               |
| first_name2        | string             | null: false               |
| birthday           | date               | null: false               |

### Association
- has_many :items
- has_many :purchases


# itemsテーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| product_name | text    | null: false |
| description  | text    | null: false |
| category     | integer | null: false |
| condition    | string  | null: false |
| price        | integer | null: false |

### Association
- belongs_to :user
- has_one :purchase


# purchase
| Column  | Type    | Options     |
| ------- | ------- | ----------- |
| user_id | string  | null: false |
| item_id | string  | null: false |

### Association
- belongs__to :item
- belongs_to :user
- has_one :address


# address テーブル
| Column            | Type    | Options     |
| ----------------- | ------- | ----------- |
| postal_number     | string  | null: false |
| prefectures       | string  | null: false |
| municipalities    | string  | null: false |
| address           | string  | null: false |
| visit_name        | string  |             |
| phone_number      | string  | null: false |

### Association
- belongs_to :purchase

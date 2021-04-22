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
| product_name | string  | null: false |
| description  | string  | null: false |
| category     | integer | null: false |
| condition    | string  | null: false |
| price        | integer | null: false |

### Association
- belongs_to :user
- has_one :purchase


# purchase
| Column  | Type    | Options     |
| ------- | ------- | ----------- |
| who     | string  | null: false |
| what    | string  | null: false |

### Association
- has_one :item
- belongs_to :user



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
- has_one :purchase

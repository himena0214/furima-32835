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

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| name1    | string | null: false |
| name2    | string | null: false |
| birthday | date   | null: false |

# itemsテーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| image        | string  | null: false |
| product name | string  | null: false |
| description  | string  | null: false |
| category     | integer | null: false |
| condition    | string  | null: false |
| price        | integer | null: false |

# purchase テーブル

| Column            | Type    | Options     |
| ----------------- | ------- | ----------- |
| card number       | integer | null: false |
| deadline          | integer | null: false |
| code              | integer | null: false |
| postal number     | integer | null: false |
| prefectures       | string  | null: false |
| municipalities    | string  | null: false |
| address           | string  | null: false |
| visit name        | string  | null: false |
| phone number      | integer | null: false |


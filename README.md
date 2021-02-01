# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| nickname           | string   | null: false               |

### Association
- has_many :purposes


## purposes テーブル

| Column   | Type     | Options       |
| -------- | -------- | ------------- |
| name     | string   | null: false   |
| unit     | integer  | null: false   |
| height   | integer  | null: false   |

### Association
- belongs_to :user

# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| nickname           | string   | null: false               |

### Association
- has_many :purposes
- has_many :blocks


## purposes テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| name     | string     | null: false       |
| unit     | integer    | null: false       |
| user     | references | foreign_key: true |

### Association
- belongs_to :user
- has_many :blocks


## blocks テーブル

| Column    | Type       | Options           |
| --------  | ---------- | ----------------- |
| value_id  | integer    | null: false       |
| comment   | text       | null: false       |
| user      | references | foreign_key: true |
| purpose   | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :purpose
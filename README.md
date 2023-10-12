# データベース設計

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :monitorings

## monitorings テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| fact       | text       |                                |
| mind       | text       |                                |
| feel       | text       |                                |
| body       | text       |                                |
| behavior   | text       |                                |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
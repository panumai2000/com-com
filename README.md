## Users テーブル

| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| nickname            | string | null: false              |
| email               | string | null: false unique: true |
| encrypted_password  | string | null: false              |
| birthday            | date   | null: false              |

### Association

- has_many :items

## Items テーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| name         | string     | null: false                   |
| genre_id     | integer    | null: false                   |
| magazine_id  | integer    | null: false                   |
| author       | string     | null: false                   |
| number       | integer    | null: false                   |
| end          | integer    | null: false                   |
| user         | references | null: false foreign_key: true |

### Association

- belongs_to :user

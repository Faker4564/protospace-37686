# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------------------------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| profile            | text   | null: false               |
| position           | text   | null: false               |
| occupation         | text   | null: false               |
| encrypted_password | string | null: false               |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Options                        |
| -------------------------------------------------------- |
| user       | references | null: false, foreign_key: true |
| title      | string     | null: false                    |
| concept    | text       | null: false                    |
| catch_copy | text       | null: false                    |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column     | Type       | Options                        |
| -------------------------------------------------------- |
| user       | references | null: false, foreign_key: true |
| content    | text       | null: false                    |
| prototype  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype
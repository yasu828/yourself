# README

## usersテーブル
| Colum             | Type       | Options                  |
| ----------------- | ---------- | ------------------------ |
| email             | string     | unique: true, null: false|
| encrypted_password| string     | null: false              |
| nickname          | string     | null: false              |
| birth             | date       | null: false              |

### Associa
- has_many: user_answers

## answersテーブル

| Colum             | Type       | Options                  |
| ----------------- | ---------- | ------------------------ |
| answer            | text       | null: false              |


## user_answersテーブル

| Colum             | Type       | Options                  |
| ----------------- | ---------- | ------------------------ |
| answer            | text       | null: false              |
| user              | references | foreign_key: true        |

### Association
- belong_to: user


## satisfactionsテーブル

| Colum             | Type       | Options                  |
| ----------------- | ---------- | ------------------------ |
| times             | integer    | null: false              |
| satisfaction      | integer    | null: false              |

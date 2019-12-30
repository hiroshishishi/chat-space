## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :group_users
- has_many :groups, through: :group_users
- has_many :massages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :group_users
- has_many :messages
- has_many :users, through: :group_users

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|body|text|null: false|
|group_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
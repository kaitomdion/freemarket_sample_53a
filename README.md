# README

## usersテーブル
|Column|Type|Option|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|encrypted_password|string|null: false|
|last_name|string|null: false|
|first_name|string|null :false|
|kata_last_name|string|null: false|
|kata_first_name|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|
|phone_number|string|null: false, unique: true|
|postal_code|string|null: false|
|prefectures|string|null: false|
|town|string|null: false|
|credit|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
-has_many :items, through: :users_items, dependent: :destroy
-has_many :users_items

## itemsテーブル
|Column|Type|Option|
|name|string|null: false|
|image|string|null: false|
|state|string|null: false|
|categoty_id|integer|null: false, foreign_key: true|
|delivery_burden|string|null: false|
|delivery_region|string|null: false|
|delivery_days|string|null: false|
|price|string|null: false|
|user_id|integer|null: false, foreign_key: true|


### Association

-belogs_to :user
-belogs_to :category


## cardsテーブル
|Column|Type|Option|
|number|string|null: false, unique: true|
|limit_month|string|null: false|
|limit_year|string|null: false|
|security_card|string|null: false, unique: true|
|user_id|string|null: false, foreign_key: true|

### Association

-belongs_to :user

## categoriesテーブル
|Column|Type|Option|
|name|string|null: false|

### Association

-has_many :items
-has_many :genres

## genresテーブル
|Column|Type|Option|
|name|string|null :false|
|category_id|string|null: false, foreign_key: true|

### Association

-belongs_to :category
-has_many :detail-genres

## detail-genresテーブル
|Column|Type|Option|
|name|string|null :false|
|genre_id|string|null: false, foreign_key: true|

### Association

-belongs_to :genre

## brandテーブル
|Column|Type|Option|
|name|string|null :false|






















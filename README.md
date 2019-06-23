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
|region_id|integer|null: false, foreign_key: true|
|town|string|null: false|
|credit|string|null: false|
|item_id|integer|null: false, foreign_key: true|

### Association
-has_many :items, through: :users_items, dependent: :destroy
-has_many :users_items
-belongs_to :region

## itemsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|image|string|null: false|
|state|text|null: false|
|categoty_id|integer|null: false, foreign_key: true|
|price|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|region_id|integer|null: false, foreign_key: true|
|method_id|integer|null: false, foreign_key: true|
|status_id|integer|null: false, foreign_key: true|
|days_id|integer|null: false, foreign_key: true|
|burden_id|integer|null: false, foreign_key: true|

### Association

-belogs_to :user
-belogs_to :region
-belogs_to :method
-belogs_to :status
-belogs_to :days
-belogs_to :burden

## cardsテーブル
|Column|Type|Option|
|------|----|------|
|number|string|null: false, unique: true|
|limit_month|string|null: false|
|limit_year|string|null: false|
|security_card|string|null: false, unique: true|
|user_id|string|null: false, foreign_key: true|

### Association

-belongs_to :user

## categoriesテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association

-has_many :items
-has_many :genres

## genresテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null :false|
|category_id|string|null: false, foreign_key: true|

### Association

-belongs_to :category
-has_many :detail-genres

## detail-genresテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null :false|
|genre_id|string|null: false, foreign_key: true|

### Association

-belongs_to :genre

## brandテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null :false|

## regionテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null false|

### Association

has_many :items

## methodテーブル
|Column|Type|Option|
|------|----|------|
|method|string|null false|

### Association

has_many :items

## statusテーブル
|Column|Type|Option|
|------|----|------|
|status|string|null false|

### Association

has_many :items

## methodテーブル
|Column|Type|Option|
|------|----|------|
|days|string|null false|

### Association

has_many :items

## burdenテーブル
|Column|Type|Option|
|------|----|------|
|burden|string|null false|

has_many :items





















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
|card_id|integer|null: false, foreign_key: true|

### Association
- has_many :items
- has_many :likes
- has_many :images
- belongs_to :region
- belongs_to :card

## imagesテーブル
|Column|Type|Option|
|------|----|------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## itemsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|image|string|null: false|
|state|text|null: false|
|price|string|null: false|
|shipping-region_id|integer|null: false, foreign_key: true|
|shipping-method_id|integer|null: false, foreign_key: true|
|shipping-status_id|integer|null: false, foreign_key: true|
|shipping-day_id|integer|null: false, foreign_key: true|
|shipping-burden_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|
|saler_id|integer|null: false, foreign_key: true|
|transaction_id|integer|null: false, foreign_key: true|

### Association
- belogs_to :user
- belogs_to :shipping-region
- belogs_to :shipping-method
- belogs_to :shipping-status
- belogs_to :shipping-day
- belogs_to :shipping-burden
- belogs_to :transaction
- belongs_to :buyer, class_name: 'User'
- belongs_to :saler, class_name: 'User'
- has_many :categories, through: :categories_items
- has_many :categories_items
- has_many :images
- has_many :likes

## cardsテーブル
|Column|Type|Option|
|------|----|------|
|number|string|null: false, unique: true|
|limit_month|string|null: false|
|limit_year|string|null: false|
|security_card|string|null: false, unique: true|
|user_id|string|null: false, foreign_key: true|

### Association
- belongs_to :user

## transactionsテーブル
|Column|Type|Option|
|------|----|------|
|status|integer|null false|

### Association
- has_many :items

## categoriesテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :items, through: :categories_items
- has_many :categories_items

## categories_itemsテーブル
|Column|Type|Option|
|------|----|------|
|category_id|string|null: false, foreign_key: true|
|item_id|string|null: false, foreign_key: true|

### Association
- belongs_to :category
- belongs_to :item

## likesテーブル
|Column|Type|Option|
|------|----|------|
|item_id|string|null: false, foreign_key: true|
|user_id|string|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## brandsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|------|

### Association
- has_many :groups

## groupsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null :false|

### Association
- belongs_to :brand

## shipping-regionsテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null false|

### Association
- has_many :items

## shipping-methodsテーブル
|Column|Type|Option|
|------|----|------|
|method|string|null false|

### Association
- has_many :items

## shipping-statusesテーブル
|Column|Type|Option|
|------|----|------|
|status|string|null false|

### Association
- has_many :items

## shipping-daysテーブル
|Column|Type|Option|
|------|----|------|
|day|string|null false|

### Association
- has_many :items

## shipping-burdensテーブル
|Column|Type|Option|
|------|----|------|
|burden|string|null false|

### Association
- has_many :items
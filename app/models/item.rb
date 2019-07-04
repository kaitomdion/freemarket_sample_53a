class Item < ApplicationRecord
  belongs_to :user
  belongs_to :shipping_method
  belongs_to :shipping_status
  belongs_to :shipping_region
  belongs_to :shipping_day
  belongs_to :shipping_burden
  # belongs_to :transaction
  belongs_to :buyer, class_name: 'User'
  belongs_to :saler, class_name: 'User'
  has_many :category_items, dependent: :destroy
  has_many :categories, through: :category_items, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy
end

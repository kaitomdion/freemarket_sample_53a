class Item < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shipping_method, optional: true
  belongs_to :shipping_status, optional: true
  belongs_to :shipping_region, optional: true
  belongs_to :shipping_day, optional: true
  belongs_to :shipping_burden, optional: true
  # belongs_to :transaction
  belongs_to :buyer, class_name: 'User', optional: true
  belongs_to :saler, class_name: 'User', optional: true
  has_many :category_items, dependent: :destroy
  has_many :categories, through: :category_items, dependent: :destroy
  has_many :images, inverse_of: :item, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :likes, dependent: :destroy
end

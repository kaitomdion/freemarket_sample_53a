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
  belongs_to :categories
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy

  # scope :aaaa, -> {where(category_id: 1)}
end



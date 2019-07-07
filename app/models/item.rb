class Item < ApplicationRecord

  # belongs_to :user
  belongs_to :shipping_method, optional:true
  belongs_to :shipping_status, optional:true
  belongs_to :shipping_region, optional:true
  belongs_to :shipping_day, optional:true
  belongs_to :shipping_burden, optional:true
  belongs_to :buyer, class_name: 'User', optional:true
  belongs_to :saler, class_name: 'User', optional:true
  # has_many :category_items, dependent: :destroy
  # has_many :categories, through: :category_items, dependent: :destroy
  has_many :images, inverse_of: :item, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :likes, dependent: :destroy
  belongs_to :category, optional:true
  # scope :aaaa, -> {where(category_id: 1)}


  validates :name, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price, presence: true, numericality:{less_than_or_equal_to:9999999, greater_than_equal_to:300 }
  validates :shipping_region_id, presence: true
  validates :shipping_method_id, presence: true
  validates :shipping_status_id, presence: true
  validates :shipping_burden_id, presence: true
  validates :category_id, presence: true
  
end



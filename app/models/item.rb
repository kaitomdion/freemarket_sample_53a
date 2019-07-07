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
  belongs_to :categories, optional:true
  
  scope :ladies,   -> {where(category_id: 1).order("RAND()").limit(4)}
  scope :mens,     -> {where(category_id: 2).order("RAND()").limit(4)}
  scope :kids,     -> {where(category_id: 3).order("RAND()").limit(4)}
  scope :cosmetics,-> {where(category_id: 4).order("RAND()").limit(4)}
end



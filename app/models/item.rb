class Item < ApplicationRecord

  belongs_to :shipping_method, optional:true
  belongs_to :shipping_status, optional:true
  belongs_to :shipping_region, optional:true
  belongs_to :shipping_day, optional:true
  belongs_to :shipping_burden, optional:true
  belongs_to :buyer, class_name: 'User', optional:true
  belongs_to :saler, class_name: 'User', optional:true
  has_many :images, inverse_of: :item, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :likes, dependent: :destroy
  belongs_to :category, optional:true

  belongs_to :item_status


  validates :name, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price, presence: true, numericality:{less_than_or_equal_to:9999999, greater_than_or_equal_to:300 }
  validates :shipping_region_id, presence: true
  validates :shipping_method_id, presence: true
  validates :shipping_status_id, presence: true
  validates :shipping_burden_id, presence: true
  validates :shipping_day_id, presence: true
  validates :saler_id, presence: true
  validates :item_status_id, presence: true
  validates :category_id, presence: true
  validates :images, presence: true
  
  scope :ladies,   -> {where(category_id: 159..337,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :mens,     -> {where(category_id: 338..468,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :kids,     -> {where(category_id: 469..586,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :cosmetics,-> {where(category_id: 867..954,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :chanel,   -> {where(brand_id: 23,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :louisvuitton,-> {where(brand_id: 82,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :supreme,  -> {where(brand_id: 24,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}
  scope :nike,     -> {where(brand_id: 41,item_status_id:1).order(Arel.sql("RAND()")).limit(4)}

  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE ?', "%#{search}%"])
  end


end



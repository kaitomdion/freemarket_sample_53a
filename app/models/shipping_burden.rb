class ShippingBurden < ApplicationRecord
  has_many :items
  enum name: [:select_shipping_burden, :postage_included, :freight_collect]
end

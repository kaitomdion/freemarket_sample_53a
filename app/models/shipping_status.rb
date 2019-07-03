class ShippingStatus < ApplicationRecord
  has_many :items
  enum name: [:select_shipping_status, :new_item, :unused, :no_dirt, :little_dirt, :yes_dirt, :bad]
end

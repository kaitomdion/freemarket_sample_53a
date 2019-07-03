class ShippingDay < ApplicationRecord
  has_many :items
  enum name: [:select_sipping_day, :within_2days, :within_3days, :within_4days]
end

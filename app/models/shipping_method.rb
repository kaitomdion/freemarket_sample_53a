class ShippingMethod < ApplicationRecord
  has_many :items
  enum name: [:select_shipping_method, :undecided, :merukari_flights, :yu_mail, :letter_pack, :ordinary_mail, :kuroneko_yamato, :yu_pack, :click_post, :yu_packet]

end

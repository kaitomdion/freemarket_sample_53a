class ShippingRegion < ApplicationRecord
  has_many :items
  enum name: [:select_shipping_region, :hokkaido, :aomori, :iwate, :miyagi, :akita, :yamagata, :fukushima, :ibaraki, :tochigi, :gunma, :saitama, :chiba, :tokyo, :kanagawa, :niigata, :toyama, :ishikawa, :fukui, :yamanashi, :nagano, :gifu, :shizuoka, :aichi, :mie, :shiga, :kyoto, :osaka, :hyogo, :nara, :wakayama, :tottori, :shimane, :okayama, :hiroshima, :yamaguchi, :tokushima, :kagawa, :ehime, :kochi, :fukuoka, :saga, :nagasaki, :kumamoto, :oita, :miyazaki, :kagoshima, :okinawa, :otherwise]
end

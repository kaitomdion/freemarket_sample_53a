class Transaction < ApplicationRecord
  has_many :images, dependent: :destroy
end

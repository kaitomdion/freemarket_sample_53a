class Image < ApplicationRecord 
  belongs_to :item, inverse_of: :images
  mount_uploader :url, ImageUploader


  validates :url, presence: true
end

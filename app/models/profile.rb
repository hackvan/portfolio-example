class Profile < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :image_url, length: { maximum: 500 }
end

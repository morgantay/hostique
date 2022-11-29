class Amenity < ApplicationRecord
  has_one :amenity_tag, dependent: :destroy
  has_many :hostels, through: :amenity_tags
end

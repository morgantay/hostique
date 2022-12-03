class Amenity < ApplicationRecord
  has_many :amenity_tag, dependent: :destroy
  has_many :hostels, through: :amenity_tags
end

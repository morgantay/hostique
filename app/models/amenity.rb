class Amenity < ApplicationRecord
  has_many :amenity_tags
  has_many :hostels, through: :amenity_tags
end

class Amenity < ApplicationRecord
  has_many :hostels, through: :amenity_tags
end

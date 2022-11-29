class Hostel < ApplicationRecord
  belongs_to :user
  has_many :rooms
  has_many :reviews
  has_many :amenities, through: :amenity_tags
end

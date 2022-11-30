class Hostel < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :amenity_tags, dependent: :destroy
  has_many :amenities, through: :amenity_tags
end

require "open-uri"

class Hostel < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :amenity_tags, dependent: :destroy
  has_many :amenities, through: :amenity_tags, dependent: :destroy

  has_many_attached :photos

  validates :name, :city, :address, presence: true
  validates :name, :address, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_validation :attach_default

  def attach_default
    unless self.photos.attached?
     file = URI.open("https://images.unsplash.com/photo-1533423996375-f914ab160932?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=900&q=80")
     self.photos.attach(io: file, filename: "hostel.jpg", content_type: "hostel/jpg")
     self.save
    end
  end
end

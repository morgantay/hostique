require "open-uri"

class Hostel < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :amenity_tags, dependent: :destroy
  has_many :amenities, through: :amenity_tags

  has_many_attached :photos

  validates :name, :city, :address, presence: true
  validates :name, :address, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_validation :attach_default

  def attach_default
    unless self.photos.attached?
     file = URI.open("https://images.unsplash.com/photo-1520277739336-7bf67edfa768?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
     self.photos.attach(io: file, filename: "hostel.jpg", content_type: "hostel/jpg")
     self.save
    end
  end
end

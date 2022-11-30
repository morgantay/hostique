require "open-uri"

class Room < ApplicationRecord
  belongs_to :hostel
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  after_validation :attach_default

  def attach_default
    unless self.photo.attached?
     file = URI.open("https://res.cloudinary.com/dwtotyygt/image/upload/v1669831538/development/zwwds7tl5lde6kcusk8r9b0woe3b.jpg")
     self.photo.attach(io: file, filename: "room.jpg", content_type: "room/jpg")
     self.save
    end
  end
end

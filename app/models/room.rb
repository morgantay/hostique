class Room < ApplicationRecord
  belongs_to :hostel
  has_many :reservations
end

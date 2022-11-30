class Room < ApplicationRecord
  belongs_to :hostel
  has_many :reservations, dependent: :destroy
end

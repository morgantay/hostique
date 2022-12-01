class Review < ApplicationRecord
  belongs_to :hostel
  belongs_to :user

  validates :content, :rating, presence: true
end

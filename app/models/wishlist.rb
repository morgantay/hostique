class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :hostels, through: :wishlist_tags
end

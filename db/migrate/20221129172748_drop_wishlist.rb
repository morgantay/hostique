class DropWishlist < ActiveRecord::Migration[7.0]
  def change
    drop_table :wishlist_tags
    drop_table :wishlists
  end
end

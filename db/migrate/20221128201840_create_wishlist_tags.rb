class CreateWishlistTags < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlist_tags do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.references :hostel, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class RemoveUserRelationFromWishlists < ActiveRecord::Migration[7.0]
  def change
    remove_column :wishlists, :user_id, :bigint
  end
end

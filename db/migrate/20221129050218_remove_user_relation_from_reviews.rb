class RemoveUserRelationFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :user_id, :bigint
  end
end

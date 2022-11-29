class RemoveUserRelationFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :user_id, :bigint
  end
end

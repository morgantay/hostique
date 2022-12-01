class RemoveRoomQuantityFromReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :room_quantity, :amount_of_beds
  end
end

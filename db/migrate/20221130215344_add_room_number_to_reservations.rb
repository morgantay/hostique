class AddRoomNumberToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :room_quantity, :integer
  end
end

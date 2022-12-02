class AddRoomNumberToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :amount_of_beds, :integer
  end
end

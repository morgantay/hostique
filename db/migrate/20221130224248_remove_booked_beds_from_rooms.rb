class RemoveBookedBedsFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :number_of_booked_beds, :integer
  end
end

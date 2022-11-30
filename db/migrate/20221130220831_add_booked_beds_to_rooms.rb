class AddBookedBedsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :number_of_booked_beds, :integer, default: 0
  end
end

class AddQuantityToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :quantity, :integer
  end
end

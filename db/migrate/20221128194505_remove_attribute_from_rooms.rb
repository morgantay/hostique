class RemoveAttributeFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :image_url, :string
  end
end

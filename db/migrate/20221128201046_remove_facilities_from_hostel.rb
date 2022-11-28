class RemoveFacilitiesFromHostel < ActiveRecord::Migration[7.0]
  def change
    remove_column :hostels, :facilities, :string
  end
end

class RemoveRatingFromHostels < ActiveRecord::Migration[7.0]
  def change
    remove_column :hostels, :rating, :float
  end
end

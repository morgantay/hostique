class ChangeHostelRatingType < ActiveRecord::Migration[7.0]
  def change
    change_column :hostels, :rating, :float
  end
end

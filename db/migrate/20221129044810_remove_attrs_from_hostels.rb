class RemoveAttrsFromHostels < ActiveRecord::Migration[7.0]
  def change
    remove_column :hostels, :user_id, :bigint
  end
end

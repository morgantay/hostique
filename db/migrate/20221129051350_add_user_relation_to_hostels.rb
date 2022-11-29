class AddUserRelationToHostels < ActiveRecord::Migration[7.0]
  def change
    add_reference :hostels, :user, foreign_key: true
  end
end

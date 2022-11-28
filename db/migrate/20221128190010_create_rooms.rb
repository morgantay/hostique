class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :number_of_beds
      t.integer :price_per_night
      t.string :name
      t.string :description
      t.string :image_url
      t.references :hostel, null: false, foreign_key: true

      t.timestamps
    end
  end
end

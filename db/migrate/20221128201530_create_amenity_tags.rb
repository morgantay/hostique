class CreateAmenityTags < ActiveRecord::Migration[7.0]
  def change
    create_table :amenity_tags do |t|
      t.references :hostel, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true

      t.timestamps
    end
  end
end

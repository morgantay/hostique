class RemoveAttributeFromHostels < ActiveRecord::Migration[7.0]
  def change
    remove_column :hostels, :image_urls, :string
  end
end

class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :google_place_id
      t.string :address
      t.string :phone_number
      t.float :lat
      t.float :lng
      t.string :icon
      t.string :name
      t.float :rating
      t.string :website

      t.timestamps
    end
  end
end

class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :image
      t.string :name
      t.float :price
      t.string :description
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end

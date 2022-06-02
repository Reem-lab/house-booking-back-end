class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :city
      t.integer :zip_code
      t.string :image
      t.integer :rooms
      t.integer :bathrooms
      t.string :surroundings
      t.decimal :price
      t.integer :construction_year

      t.timestamps
    end
  end
end
